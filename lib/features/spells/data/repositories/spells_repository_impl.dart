import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exception/exceptions.dart';
import '../../../../core/error/failures/failures.dart';

import '../../../../shared/domain/entities/spell/spells.dart';
import '../../domain/repositoryies/spells_repositories.dart';

import '../datasources/remote_spells_datasource.dart';

@LazySingleton(as: SpellsRepository)
class SpellsRepositoryImpl implements SpellsRepository {
  final RemoteSpellsDataSource remoteSpellsDataSource;


  SpellsRepositoryImpl(this.remoteSpellsDataSource);

  @override
  Future<Either<Failures, List<Spells>>> fetchSpells() async {

      try {
        final spells = await remoteSpellsDataSource.fetchSpells();

        return Right(spells);
      } on NetworkException catch (e) {
        return Left(NetworkFailure(e));
      }

  }

  @override
  Future<Either<Failures, List<Spells>>> searchSpell(String spellName) async {
    final spells = await fetchSpells();

    if (spells.isRight()) {
      final searchResult = spells
          .getOrElse(() => [])
          .where((spell) => spell.name!.toLowerCase().contains(spellName.toLowerCase()))
          .toList();

      if (searchResult.isNotEmpty) {
        return Right(searchResult);
      } else {
        return const Left(NotFoundFailure());
      }
    } else {
      return spells;
    }
  }
}
