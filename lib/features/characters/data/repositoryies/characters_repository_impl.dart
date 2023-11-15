import 'package:bloc_app_stuctura/core/error/error_object.dart';
import 'package:bloc_app_stuctura/core/error/failures/failures.dart';
import 'package:bloc_app_stuctura/features/characters/domain/repositoryies/characters_repository.dart';
import 'package:bloc_app_stuctura/shared/domain/entities/character/character.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exception/exceptions.dart';
import '../datasources/remote_characters_datasource.dart';

@LazySingleton(as: CharactersRepository)
class CharactersRepositoryImpl implements CharactersRepository{
  final RemoteCharactersDataSource remoteCharactersDataSource;

  CharactersRepositoryImpl(this.remoteCharactersDataSource);

  @override
  Future<Either<Failures, List<Character>>> fetchAllCharacters() async{
    try {
      final characters = await remoteCharactersDataSource.fetchAllCharacters();
      return Right(characters);
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e));
    }
  }

  @override
  Future<Either<Failures, List<Character>>> searchCharacter(String characterName) async{
    final characters = await fetchAllCharacters();

    if (characters.isRight()) {
      final searchResult = characters
          .getOrElse(() => [])
          .where((character) => character.name!.toLowerCase().contains(characterName.toLowerCase()))
          .toList();

      if (searchResult.isNotEmpty) {
        return Right(searchResult);
      } else {
        return const Left(NotFoundFailure());
      }
    } else {
      return characters;
    }
  }

}