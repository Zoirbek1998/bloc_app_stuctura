import 'package:bloc/bloc.dart';
import 'package:bloc_app_stuctura/core/error/error_object.dart';
import 'package:bloc_app_stuctura/features/characters/domain/usecases/search_character.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/error/failures/failures.dart';
import '../../../../../shared/domain/entities/character/character.dart';
import '../../../../../shared/domain/usecases/usecases.dart';
import '../../../domain/usecases/fetch_all_characters.dart';

part 'characters_event.dart';

part 'characters_state.dart';

part 'characters_bloc.freezed.dart';

@injectable
class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  final FetchAllCharacters _fetchAllCharacters;
  final SearchCharacter _searchCharacter;

  CharactersBloc(
      {required FetchAllCharacters fetchAllCharacters,
      required SearchCharacter searchCharacter})
      : _fetchAllCharacters = fetchAllCharacters,
        _searchCharacter = searchCharacter,
        super(const CharactersState.loading()) {
    on<_FetchAllCharacters>(_onFetchAllCharacters);
    on<_SearchCharacters>(_onSearchCharacter);
  }

  void _onFetchAllCharacters(
      _FetchAllCharacters event, Emitter<CharactersState> emit) async {
    final Either<Failures, List<Character>> charactersEither =
        await _fetchAllCharacters(NoParams());

    charactersEither.fold(
        (l) => emit(CharactersState.error(
            error: ErrorObject.mapFailureToErrorObject(failure: l))),
        (r) {

          emit(CharactersState.loaded(characters: r));
        });
  }

  void _onSearchCharacter(
      _SearchCharacters event, Emitter<CharactersState> emit) async {
    final Either<Failures, List<Character>> charactersEither =
        await _searchCharacter(
            SearchCharacterParams(characterName: event.characterName));

    charactersEither.fold(
        (failure) => emit(CharactersState.error(
            error: ErrorObject.mapFailureToErrorObject(failure: failure))),
        (characters) => emit(CharactersState.loaded(characters: characters)));
  }
}
