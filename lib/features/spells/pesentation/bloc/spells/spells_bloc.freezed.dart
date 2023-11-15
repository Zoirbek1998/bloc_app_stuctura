// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spells_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SpellsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSpells,
    required TResult Function(String spellName) searchSpell,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchSpells,
    TResult? Function(String spellName)? searchSpell,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSpells,
    TResult Function(String spellName)? searchSpell,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchSpells value) fetchSpells,
    required TResult Function(_SearchSpell value) searchSpell,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchSpells value)? fetchSpells,
    TResult? Function(_SearchSpell value)? searchSpell,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSpells value)? fetchSpells,
    TResult Function(_SearchSpell value)? searchSpell,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpellsEventCopyWith<$Res> {
  factory $SpellsEventCopyWith(
          SpellsEvent value, $Res Function(SpellsEvent) then) =
      _$SpellsEventCopyWithImpl<$Res, SpellsEvent>;
}

/// @nodoc
class _$SpellsEventCopyWithImpl<$Res, $Val extends SpellsEvent>
    implements $SpellsEventCopyWith<$Res> {
  _$SpellsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchSpellsImplCopyWith<$Res> {
  factory _$$FetchSpellsImplCopyWith(
          _$FetchSpellsImpl value, $Res Function(_$FetchSpellsImpl) then) =
      __$$FetchSpellsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchSpellsImplCopyWithImpl<$Res>
    extends _$SpellsEventCopyWithImpl<$Res, _$FetchSpellsImpl>
    implements _$$FetchSpellsImplCopyWith<$Res> {
  __$$FetchSpellsImplCopyWithImpl(
      _$FetchSpellsImpl _value, $Res Function(_$FetchSpellsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchSpellsImpl implements _FetchSpells {
  const _$FetchSpellsImpl();

  @override
  String toString() {
    return 'SpellsEvent.fetchSpells()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchSpellsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSpells,
    required TResult Function(String spellName) searchSpell,
  }) {
    return fetchSpells();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchSpells,
    TResult? Function(String spellName)? searchSpell,
  }) {
    return fetchSpells?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSpells,
    TResult Function(String spellName)? searchSpell,
    required TResult orElse(),
  }) {
    if (fetchSpells != null) {
      return fetchSpells();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchSpells value) fetchSpells,
    required TResult Function(_SearchSpell value) searchSpell,
  }) {
    return fetchSpells(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchSpells value)? fetchSpells,
    TResult? Function(_SearchSpell value)? searchSpell,
  }) {
    return fetchSpells?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSpells value)? fetchSpells,
    TResult Function(_SearchSpell value)? searchSpell,
    required TResult orElse(),
  }) {
    if (fetchSpells != null) {
      return fetchSpells(this);
    }
    return orElse();
  }
}

abstract class _FetchSpells implements SpellsEvent {
  const factory _FetchSpells() = _$FetchSpellsImpl;
}

/// @nodoc
abstract class _$$SearchSpellImplCopyWith<$Res> {
  factory _$$SearchSpellImplCopyWith(
          _$SearchSpellImpl value, $Res Function(_$SearchSpellImpl) then) =
      __$$SearchSpellImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String spellName});
}

/// @nodoc
class __$$SearchSpellImplCopyWithImpl<$Res>
    extends _$SpellsEventCopyWithImpl<$Res, _$SearchSpellImpl>
    implements _$$SearchSpellImplCopyWith<$Res> {
  __$$SearchSpellImplCopyWithImpl(
      _$SearchSpellImpl _value, $Res Function(_$SearchSpellImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spellName = null,
  }) {
    return _then(_$SearchSpellImpl(
      spellName: null == spellName
          ? _value.spellName
          : spellName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchSpellImpl implements _SearchSpell {
  const _$SearchSpellImpl({required this.spellName});

  @override
  final String spellName;

  @override
  String toString() {
    return 'SpellsEvent.searchSpell(spellName: $spellName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchSpellImpl &&
            (identical(other.spellName, spellName) ||
                other.spellName == spellName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, spellName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchSpellImplCopyWith<_$SearchSpellImpl> get copyWith =>
      __$$SearchSpellImplCopyWithImpl<_$SearchSpellImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSpells,
    required TResult Function(String spellName) searchSpell,
  }) {
    return searchSpell(spellName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchSpells,
    TResult? Function(String spellName)? searchSpell,
  }) {
    return searchSpell?.call(spellName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSpells,
    TResult Function(String spellName)? searchSpell,
    required TResult orElse(),
  }) {
    if (searchSpell != null) {
      return searchSpell(spellName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchSpells value) fetchSpells,
    required TResult Function(_SearchSpell value) searchSpell,
  }) {
    return searchSpell(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchSpells value)? fetchSpells,
    TResult? Function(_SearchSpell value)? searchSpell,
  }) {
    return searchSpell?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSpells value)? fetchSpells,
    TResult Function(_SearchSpell value)? searchSpell,
    required TResult orElse(),
  }) {
    if (searchSpell != null) {
      return searchSpell(this);
    }
    return orElse();
  }
}

abstract class _SearchSpell implements SpellsEvent {
  const factory _SearchSpell({required final String spellName}) =
      _$SearchSpellImpl;

  String get spellName;
  @JsonKey(ignore: true)
  _$$SearchSpellImplCopyWith<_$SearchSpellImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SpellsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Spells> spells) loaded,
    required TResult Function(ErrorObject error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Spells> spells)? loaded,
    TResult? Function(ErrorObject error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Spells> spells)? loaded,
    TResult Function(ErrorObject error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadFailure value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadFailure value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadFailure value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpellsStateCopyWith<$Res> {
  factory $SpellsStateCopyWith(
          SpellsState value, $Res Function(SpellsState) then) =
      _$SpellsStateCopyWithImpl<$Res, SpellsState>;
}

/// @nodoc
class _$SpellsStateCopyWithImpl<$Res, $Val extends SpellsState>
    implements $SpellsStateCopyWith<$Res> {
  _$SpellsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$SpellsStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'SpellsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Spells> spells) loaded,
    required TResult Function(ErrorObject error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Spells> spells)? loaded,
    TResult? Function(ErrorObject error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Spells> spells)? loaded,
    TResult Function(ErrorObject error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadFailure value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadFailure value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadFailure value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SpellsState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Spells> spells});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$SpellsStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spells = null,
  }) {
    return _then(_$LoadedImpl(
      spells: null == spells
          ? _value._spells
          : spells // ignore: cast_nullable_to_non_nullable
              as List<Spells>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required final List<Spells> spells}) : _spells = spells;

  final List<Spells> _spells;
  @override
  List<Spells> get spells {
    if (_spells is EqualUnmodifiableListView) return _spells;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_spells);
  }

  @override
  String toString() {
    return 'SpellsState.loaded(spells: $spells)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._spells, _spells));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_spells));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Spells> spells) loaded,
    required TResult Function(ErrorObject error) error,
  }) {
    return loaded(spells);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Spells> spells)? loaded,
    TResult? Function(ErrorObject error)? error,
  }) {
    return loaded?.call(spells);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Spells> spells)? loaded,
    TResult Function(ErrorObject error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(spells);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadFailure value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadFailure value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadFailure value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements SpellsState {
  const factory _Loaded({required final List<Spells> spells}) = _$LoadedImpl;

  List<Spells> get spells;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadFailureImplCopyWith<$Res> {
  factory _$$LoadFailureImplCopyWith(
          _$LoadFailureImpl value, $Res Function(_$LoadFailureImpl) then) =
      __$$LoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorObject error});
}

/// @nodoc
class __$$LoadFailureImplCopyWithImpl<$Res>
    extends _$SpellsStateCopyWithImpl<$Res, _$LoadFailureImpl>
    implements _$$LoadFailureImplCopyWith<$Res> {
  __$$LoadFailureImplCopyWithImpl(
      _$LoadFailureImpl _value, $Res Function(_$LoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$LoadFailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorObject,
    ));
  }
}

/// @nodoc

class _$LoadFailureImpl implements _LoadFailure {
  const _$LoadFailureImpl({required this.error});

  @override
  final ErrorObject error;

  @override
  String toString() {
    return 'SpellsState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      __$$LoadFailureImplCopyWithImpl<_$LoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Spells> spells) loaded,
    required TResult Function(ErrorObject error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Spells> spells)? loaded,
    TResult? Function(ErrorObject error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Spells> spells)? loaded,
    TResult Function(ErrorObject error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadFailure value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadFailure value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadFailure value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements SpellsState {
  const factory _LoadFailure({required final ErrorObject error}) =
      _$LoadFailureImpl;

  ErrorObject get error;
  @JsonKey(ignore: true)
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
