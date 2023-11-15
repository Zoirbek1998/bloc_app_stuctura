import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/spell/spells.dart';

part 'spells_model.freezed.dart';
part 'spells_model.g.dart';

@freezed
class SpellsModel with _$SpellsModel {
  const SpellsModel._();

  const factory SpellsModel({
    String? id,
    String? name,
    String? description,
  }) = _SpellsModel;

  factory SpellsModel.fromJson(Map<String,Object?> json) => _$SpellsModelFromJson(json);

  factory SpellsModel.fromEntity(Spells spells){
    return SpellsModel(
      id: spells.id,
      name: spells.name,
      description: spells.description,
    );
  }

  Spells toEntity(){
    return Spells(
      id: id,
      name: name,
      description: description,
    );
  }

}
