import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures/failures.dart';
import '../../../../shared/domain/entities/spell/spells.dart';
import '../../../../shared/domain/usecases/usecases.dart';
import '../repositoryies/spells_repositories.dart';

@injectable
class FetchSpells implements UseCase<List<Spells>, NoParams> {
  final SpellsRepository spellsRepository;

  FetchSpells(this.spellsRepository);

  @override
  Future<Either<Failures, List<Spells>>> call(NoParams params) {
    return spellsRepository.fetchSpells();
  }
}