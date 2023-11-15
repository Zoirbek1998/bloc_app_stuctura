// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spells_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpellsModel _$SpellsModelFromJson(Map<String, dynamic> json) {
  return _SpellsModel.fromJson(json);
}

/// @nodoc
mixin _$SpellsModel {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpellsModelCopyWith<SpellsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpellsModelCopyWith<$Res> {
  factory $SpellsModelCopyWith(
          SpellsModel value, $Res Function(SpellsModel) then) =
      _$SpellsModelCopyWithImpl<$Res, SpellsModel>;
  @useResult
  $Res call({String? id, String? name, String? description});
}

/// @nodoc
class _$SpellsModelCopyWithImpl<$Res, $Val extends SpellsModel>
    implements $SpellsModelCopyWith<$Res> {
  _$SpellsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpellsModelImplCopyWith<$Res>
    implements $SpellsModelCopyWith<$Res> {
  factory _$$SpellsModelImplCopyWith(
          _$SpellsModelImpl value, $Res Function(_$SpellsModelImpl) then) =
      __$$SpellsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name, String? description});
}

/// @nodoc
class __$$SpellsModelImplCopyWithImpl<$Res>
    extends _$SpellsModelCopyWithImpl<$Res, _$SpellsModelImpl>
    implements _$$SpellsModelImplCopyWith<$Res> {
  __$$SpellsModelImplCopyWithImpl(
      _$SpellsModelImpl _value, $Res Function(_$SpellsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_$SpellsModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpellsModelImpl extends _SpellsModel {
  const _$SpellsModelImpl({this.id, this.name, this.description}) : super._();

  factory _$SpellsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpellsModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? description;

  @override
  String toString() {
    return 'SpellsModel(id: $id, name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpellsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpellsModelImplCopyWith<_$SpellsModelImpl> get copyWith =>
      __$$SpellsModelImplCopyWithImpl<_$SpellsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpellsModelImplToJson(
      this,
    );
  }
}

abstract class _SpellsModel extends SpellsModel {
  const factory _SpellsModel(
      {final String? id,
      final String? name,
      final String? description}) = _$SpellsModelImpl;
  const _SpellsModel._() : super._();

  factory _SpellsModel.fromJson(Map<String, dynamic> json) =
      _$SpellsModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$SpellsModelImplCopyWith<_$SpellsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
