import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/error/error_object.dart';
import '../../../../../core/error/failures/failures.dart';
import '../../../../../shared/domain/entities/spell/spells.dart';
import '../../../../../shared/domain/usecases/usecases.dart';
import '../../../domain/usecases/fetch_spells.dart';
import '../../../domain/usecases/search_spells.dart';

part 'spells_event.dart';

part 'spells_state.dart';

part 'spells_bloc.freezed.dart';

@injectable
class SpellsBloc extends Bloc<SpellsEvent, SpellsState> {
  final FetchSpells _fetchSpells;
  final SearchSpell _searchSpell;

  SpellsBloc({
    required FetchSpells fetchSpells,
    required SearchSpell searchSpell,
  })  : _fetchSpells = fetchSpells,
        _searchSpell = searchSpell,
        super(const SpellsState.loading()) {
    on<_FetchSpells>(_onFetchSpells);
    on<_SearchSpell>(_onSearchSpell);
  }

  void _onFetchSpells(_FetchSpells event, Emitter<SpellsState> emit) async {
    final Either<Failures, List<Spells>> spellsEither = await _fetchSpells(NoParams());

    spellsEither.fold(
            (failure) =>
            emit(SpellsState.error(error: ErrorObject.mapFailureToErrorObject(failure: failure))),
            (spells) => emit(SpellsState.loaded(spells: spells)));
  }

  void _onSearchSpell(_SearchSpell event, Emitter<SpellsState> emit) async {
    final Either<Failures, List<Spells>> spellsEither =
    await _searchSpell(SearchSpellParams(spellName: event.spellName));

    spellsEither.fold(
            (failure) =>
            emit(SpellsState.error(error: ErrorObject.mapFailureToErrorObject(failure: failure))),
            (spells) => emit(SpellsState.loaded(spells: spells)));
  }



}
