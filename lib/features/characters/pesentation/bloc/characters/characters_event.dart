part of 'characters_bloc.dart';

@freezed
class CharactersEvent with _$CharactersEvent {
  const factory CharactersEvent.fetchAllCharacters() = _FetchAllCharacters;
  const factory CharactersEvent.searchCharacters({required String characterName}) = _SearchCharacters;
}
