
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/character/character.dart';
import '../wand/wand_model.dart';

part 'character_model.freezed.dart';
part 'character_model.g.dart';

@freezed
class CharacterModel with _$CharacterModel {
  const CharacterModel._();

  const factory CharacterModel({
    String? id,
    String? name,
    String? species,
    String? gender,
    String? house,
    String? dateOfBirth,
    bool? wizard,
    String? ancestry,
    String? eyeColour,
    String? hairColour,
    @JsonKey(name: 'wand') WandModel? wandModel,
    String? patronus,
    String? actor,
    bool? alive,
    String? image,
  }) = _CharacterModel;

  factory CharacterModel.fromJson(Map<String,Object?> json) => _$CharacterModelFromJson(json);


  factory CharacterModel.fromEntity(Character character) {
    return CharacterModel(
      id: character.id,
      name: character.name,
      species: character.species,
      gender: character.gender,
      house: character.house,
      dateOfBirth: character.dateOfBirth,
      wizard: character.wizard,
      ancestry: character.ancestry,
      eyeColour: character.eyeColour,
      hairColour: character.hairColour,
      wandModel: WandModel.fromEntity(character.wand),
      patronus: character.patronus,
      actor: character.actor,
      alive: character.alive,
      image: character.image,
    );
  }

  Character toEntity() {
    return Character(
      id: id,
      name: name,
      species: species,
      gender: gender,
      house: house,
      dateOfBirth: dateOfBirth,
      wizard: wizard,
      ancestry: ancestry,
      eyeColour: eyeColour,
      hairColour: hairColour,
      wand: wandModel?.toEntity(),
      patronus: patronus,
      actor: actor,
      alive: alive,
      image: image,
    );
  }

}
