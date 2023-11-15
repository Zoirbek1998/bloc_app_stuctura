// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CharacterModelImpl _$$CharacterModelImplFromJson(Map<String, dynamic> json) =>
    _$CharacterModelImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      species: json['species'] as String?,
      gender: json['gender'] as String?,
      house: json['house'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      wizard: json['wizard'] as bool?,
      ancestry: json['ancestry'] as String?,
      eyeColour: json['eyeColour'] as String?,
      hairColour: json['hairColour'] as String?,
      wandModel: json['wand'] == null
          ? null
          : WandModel.fromJson(json['wand'] as Map<String, dynamic>),
      patronus: json['patronus'] as String?,
      actor: json['actor'] as String?,
      alive: json['alive'] as bool?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$CharacterModelImplToJson(
        _$CharacterModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'species': instance.species,
      'gender': instance.gender,
      'house': instance.house,
      'dateOfBirth': instance.dateOfBirth,
      'wizard': instance.wizard,
      'ancestry': instance.ancestry,
      'eyeColour': instance.eyeColour,
      'hairColour': instance.hairColour,
      'wand': instance.wandModel,
      'patronus': instance.patronus,
      'actor': instance.actor,
      'alive': instance.alive,
      'image': instance.image,
    };
