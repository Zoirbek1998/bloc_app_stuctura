// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CharacterModel _$CharacterModelFromJson(Map<String, dynamic> json) {
  return _CharacterModel.fromJson(json);
}

/// @nodoc
mixin _$CharacterModel {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get species => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get house => throw _privateConstructorUsedError;
  String? get dateOfBirth => throw _privateConstructorUsedError;
  bool? get wizard => throw _privateConstructorUsedError;
  String? get ancestry => throw _privateConstructorUsedError;
  String? get eyeColour => throw _privateConstructorUsedError;
  String? get hairColour => throw _privateConstructorUsedError;
  @JsonKey(name: 'wand')
  WandModel? get wandModel => throw _privateConstructorUsedError;
  String? get patronus => throw _privateConstructorUsedError;
  String? get actor => throw _privateConstructorUsedError;
  bool? get alive => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterModelCopyWith<CharacterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterModelCopyWith<$Res> {
  factory $CharacterModelCopyWith(
          CharacterModel value, $Res Function(CharacterModel) then) =
      _$CharacterModelCopyWithImpl<$Res, CharacterModel>;
  @useResult
  $Res call(
      {String? id,
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
      String? image});

  $WandModelCopyWith<$Res>? get wandModel;
}

/// @nodoc
class _$CharacterModelCopyWithImpl<$Res, $Val extends CharacterModel>
    implements $CharacterModelCopyWith<$Res> {
  _$CharacterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? species = freezed,
    Object? gender = freezed,
    Object? house = freezed,
    Object? dateOfBirth = freezed,
    Object? wizard = freezed,
    Object? ancestry = freezed,
    Object? eyeColour = freezed,
    Object? hairColour = freezed,
    Object? wandModel = freezed,
    Object? patronus = freezed,
    Object? actor = freezed,
    Object? alive = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      house: freezed == house
          ? _value.house
          : house // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      wizard: freezed == wizard
          ? _value.wizard
          : wizard // ignore: cast_nullable_to_non_nullable
              as bool?,
      ancestry: freezed == ancestry
          ? _value.ancestry
          : ancestry // ignore: cast_nullable_to_non_nullable
              as String?,
      eyeColour: freezed == eyeColour
          ? _value.eyeColour
          : eyeColour // ignore: cast_nullable_to_non_nullable
              as String?,
      hairColour: freezed == hairColour
          ? _value.hairColour
          : hairColour // ignore: cast_nullable_to_non_nullable
              as String?,
      wandModel: freezed == wandModel
          ? _value.wandModel
          : wandModel // ignore: cast_nullable_to_non_nullable
              as WandModel?,
      patronus: freezed == patronus
          ? _value.patronus
          : patronus // ignore: cast_nullable_to_non_nullable
              as String?,
      actor: freezed == actor
          ? _value.actor
          : actor // ignore: cast_nullable_to_non_nullable
              as String?,
      alive: freezed == alive
          ? _value.alive
          : alive // ignore: cast_nullable_to_non_nullable
              as bool?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WandModelCopyWith<$Res>? get wandModel {
    if (_value.wandModel == null) {
      return null;
    }

    return $WandModelCopyWith<$Res>(_value.wandModel!, (value) {
      return _then(_value.copyWith(wandModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CharacterModelImplCopyWith<$Res>
    implements $CharacterModelCopyWith<$Res> {
  factory _$$CharacterModelImplCopyWith(_$CharacterModelImpl value,
          $Res Function(_$CharacterModelImpl) then) =
      __$$CharacterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
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
      String? image});

  @override
  $WandModelCopyWith<$Res>? get wandModel;
}

/// @nodoc
class __$$CharacterModelImplCopyWithImpl<$Res>
    extends _$CharacterModelCopyWithImpl<$Res, _$CharacterModelImpl>
    implements _$$CharacterModelImplCopyWith<$Res> {
  __$$CharacterModelImplCopyWithImpl(
      _$CharacterModelImpl _value, $Res Function(_$CharacterModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? species = freezed,
    Object? gender = freezed,
    Object? house = freezed,
    Object? dateOfBirth = freezed,
    Object? wizard = freezed,
    Object? ancestry = freezed,
    Object? eyeColour = freezed,
    Object? hairColour = freezed,
    Object? wandModel = freezed,
    Object? patronus = freezed,
    Object? actor = freezed,
    Object? alive = freezed,
    Object? image = freezed,
  }) {
    return _then(_$CharacterModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      house: freezed == house
          ? _value.house
          : house // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      wizard: freezed == wizard
          ? _value.wizard
          : wizard // ignore: cast_nullable_to_non_nullable
              as bool?,
      ancestry: freezed == ancestry
          ? _value.ancestry
          : ancestry // ignore: cast_nullable_to_non_nullable
              as String?,
      eyeColour: freezed == eyeColour
          ? _value.eyeColour
          : eyeColour // ignore: cast_nullable_to_non_nullable
              as String?,
      hairColour: freezed == hairColour
          ? _value.hairColour
          : hairColour // ignore: cast_nullable_to_non_nullable
              as String?,
      wandModel: freezed == wandModel
          ? _value.wandModel
          : wandModel // ignore: cast_nullable_to_non_nullable
              as WandModel?,
      patronus: freezed == patronus
          ? _value.patronus
          : patronus // ignore: cast_nullable_to_non_nullable
              as String?,
      actor: freezed == actor
          ? _value.actor
          : actor // ignore: cast_nullable_to_non_nullable
              as String?,
      alive: freezed == alive
          ? _value.alive
          : alive // ignore: cast_nullable_to_non_nullable
              as bool?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacterModelImpl extends _CharacterModel {
  const _$CharacterModelImpl(
      {this.id,
      this.name,
      this.species,
      this.gender,
      this.house,
      this.dateOfBirth,
      this.wizard,
      this.ancestry,
      this.eyeColour,
      this.hairColour,
      @JsonKey(name: 'wand') this.wandModel,
      this.patronus,
      this.actor,
      this.alive,
      this.image})
      : super._();

  factory _$CharacterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharacterModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? species;
  @override
  final String? gender;
  @override
  final String? house;
  @override
  final String? dateOfBirth;
  @override
  final bool? wizard;
  @override
  final String? ancestry;
  @override
  final String? eyeColour;
  @override
  final String? hairColour;
  @override
  @JsonKey(name: 'wand')
  final WandModel? wandModel;
  @override
  final String? patronus;
  @override
  final String? actor;
  @override
  final bool? alive;
  @override
  final String? image;

  @override
  String toString() {
    return 'CharacterModel(id: $id, name: $name, species: $species, gender: $gender, house: $house, dateOfBirth: $dateOfBirth, wizard: $wizard, ancestry: $ancestry, eyeColour: $eyeColour, hairColour: $hairColour, wandModel: $wandModel, patronus: $patronus, actor: $actor, alive: $alive, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.house, house) || other.house == house) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.wizard, wizard) || other.wizard == wizard) &&
            (identical(other.ancestry, ancestry) ||
                other.ancestry == ancestry) &&
            (identical(other.eyeColour, eyeColour) ||
                other.eyeColour == eyeColour) &&
            (identical(other.hairColour, hairColour) ||
                other.hairColour == hairColour) &&
            (identical(other.wandModel, wandModel) ||
                other.wandModel == wandModel) &&
            (identical(other.patronus, patronus) ||
                other.patronus == patronus) &&
            (identical(other.actor, actor) || other.actor == actor) &&
            (identical(other.alive, alive) || other.alive == alive) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      species,
      gender,
      house,
      dateOfBirth,
      wizard,
      ancestry,
      eyeColour,
      hairColour,
      wandModel,
      patronus,
      actor,
      alive,
      image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterModelImplCopyWith<_$CharacterModelImpl> get copyWith =>
      __$$CharacterModelImplCopyWithImpl<_$CharacterModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterModelImplToJson(
      this,
    );
  }
}

abstract class _CharacterModel extends CharacterModel {
  const factory _CharacterModel(
      {final String? id,
      final String? name,
      final String? species,
      final String? gender,
      final String? house,
      final String? dateOfBirth,
      final bool? wizard,
      final String? ancestry,
      final String? eyeColour,
      final String? hairColour,
      @JsonKey(name: 'wand') final WandModel? wandModel,
      final String? patronus,
      final String? actor,
      final bool? alive,
      final String? image}) = _$CharacterModelImpl;
  const _CharacterModel._() : super._();

  factory _CharacterModel.fromJson(Map<String, dynamic> json) =
      _$CharacterModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get species;
  @override
  String? get gender;
  @override
  String? get house;
  @override
  String? get dateOfBirth;
  @override
  bool? get wizard;
  @override
  String? get ancestry;
  @override
  String? get eyeColour;
  @override
  String? get hairColour;
  @override
  @JsonKey(name: 'wand')
  WandModel? get wandModel;
  @override
  String? get patronus;
  @override
  String? get actor;
  @override
  bool? get alive;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$CharacterModelImplCopyWith<_$CharacterModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
