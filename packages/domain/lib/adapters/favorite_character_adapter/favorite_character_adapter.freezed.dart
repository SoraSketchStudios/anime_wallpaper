// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_character_adapter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FavoriteCharacter _$FavoriteCharacterFromJson(Map<String, dynamic> json) {
  return _FavoriteCharacter.fromJson(json);
}

/// @nodoc
mixin _$FavoriteCharacter {
  @HiveField(1)
  CharacterModel? get characterModel => throw _privateConstructorUsedError;
  @HiveField(2)
  DateTime? get createAt => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get idCharacter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoriteCharacterCopyWith<FavoriteCharacter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteCharacterCopyWith<$Res> {
  factory $FavoriteCharacterCopyWith(
          FavoriteCharacter value, $Res Function(FavoriteCharacter) then) =
      _$FavoriteCharacterCopyWithImpl<$Res, FavoriteCharacter>;
  @useResult
  $Res call(
      {@HiveField(1) CharacterModel? characterModel,
      @HiveField(2) DateTime? createAt,
      @HiveField(3) String? idCharacter});

  $CharacterModelCopyWith<$Res>? get characterModel;
}

/// @nodoc
class _$FavoriteCharacterCopyWithImpl<$Res, $Val extends FavoriteCharacter>
    implements $FavoriteCharacterCopyWith<$Res> {
  _$FavoriteCharacterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characterModel = freezed,
    Object? createAt = freezed,
    Object? idCharacter = freezed,
  }) {
    return _then(_value.copyWith(
      characterModel: freezed == characterModel
          ? _value.characterModel
          : characterModel // ignore: cast_nullable_to_non_nullable
              as CharacterModel?,
      createAt: freezed == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      idCharacter: freezed == idCharacter
          ? _value.idCharacter
          : idCharacter // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CharacterModelCopyWith<$Res>? get characterModel {
    if (_value.characterModel == null) {
      return null;
    }

    return $CharacterModelCopyWith<$Res>(_value.characterModel!, (value) {
      return _then(_value.copyWith(characterModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FavoriteCharacterImplCopyWith<$Res>
    implements $FavoriteCharacterCopyWith<$Res> {
  factory _$$FavoriteCharacterImplCopyWith(_$FavoriteCharacterImpl value,
          $Res Function(_$FavoriteCharacterImpl) then) =
      __$$FavoriteCharacterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(1) CharacterModel? characterModel,
      @HiveField(2) DateTime? createAt,
      @HiveField(3) String? idCharacter});

  @override
  $CharacterModelCopyWith<$Res>? get characterModel;
}

/// @nodoc
class __$$FavoriteCharacterImplCopyWithImpl<$Res>
    extends _$FavoriteCharacterCopyWithImpl<$Res, _$FavoriteCharacterImpl>
    implements _$$FavoriteCharacterImplCopyWith<$Res> {
  __$$FavoriteCharacterImplCopyWithImpl(_$FavoriteCharacterImpl _value,
      $Res Function(_$FavoriteCharacterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characterModel = freezed,
    Object? createAt = freezed,
    Object? idCharacter = freezed,
  }) {
    return _then(_$FavoriteCharacterImpl(
      characterModel: freezed == characterModel
          ? _value.characterModel
          : characterModel // ignore: cast_nullable_to_non_nullable
              as CharacterModel?,
      createAt: freezed == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      idCharacter: freezed == idCharacter
          ? _value.idCharacter
          : idCharacter // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0)
class _$FavoriteCharacterImpl implements _FavoriteCharacter {
  const _$FavoriteCharacterImpl(
      {@HiveField(1) this.characterModel,
      @HiveField(2) this.createAt,
      @HiveField(3) this.idCharacter});

  factory _$FavoriteCharacterImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavoriteCharacterImplFromJson(json);

  @override
  @HiveField(1)
  final CharacterModel? characterModel;
  @override
  @HiveField(2)
  final DateTime? createAt;
  @override
  @HiveField(3)
  final String? idCharacter;

  @override
  String toString() {
    return 'FavoriteCharacter(characterModel: $characterModel, createAt: $createAt, idCharacter: $idCharacter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteCharacterImpl &&
            (identical(other.characterModel, characterModel) ||
                other.characterModel == characterModel) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.idCharacter, idCharacter) ||
                other.idCharacter == idCharacter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, characterModel, createAt, idCharacter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteCharacterImplCopyWith<_$FavoriteCharacterImpl> get copyWith =>
      __$$FavoriteCharacterImplCopyWithImpl<_$FavoriteCharacterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavoriteCharacterImplToJson(
      this,
    );
  }
}

abstract class _FavoriteCharacter implements FavoriteCharacter {
  const factory _FavoriteCharacter(
      {@HiveField(1) final CharacterModel? characterModel,
      @HiveField(2) final DateTime? createAt,
      @HiveField(3) final String? idCharacter}) = _$FavoriteCharacterImpl;

  factory _FavoriteCharacter.fromJson(Map<String, dynamic> json) =
      _$FavoriteCharacterImpl.fromJson;

  @override
  @HiveField(1)
  CharacterModel? get characterModel;
  @override
  @HiveField(2)
  DateTime? get createAt;
  @override
  @HiveField(3)
  String? get idCharacter;
  @override
  @JsonKey(ignore: true)
  _$$FavoriteCharacterImplCopyWith<_$FavoriteCharacterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
