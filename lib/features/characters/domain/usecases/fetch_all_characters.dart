

import 'package:bloc_app_stuctura/core/error/failures/failures.dart';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../shared/domain/entities/character/character.dart';
import '../../../../shared/domain/usecases/usecases.dart';
import '../repositoryies/characters_repository.dart';

@injectable
class FetchAllCharacters implements UseCase<List<Character>,NoParams>{
  final CharactersRepository charactersRepository;

  FetchAllCharacters(this.charactersRepository);

  @override
 Future<Either<Failures,List<Character>>> call(NoParams params) {
    return charactersRepository.fetchAllCharacters();
  }

}