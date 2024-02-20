// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_model_adapter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CharacterModel _$CharacterModelFromJson(Map<String, dynamic> json) {
  return _CharacterModel.fromJson(json);
}

/// @nodoc
mixin _$CharacterModel {
  @HiveField(1)
  CharacterModel? get clientSecret => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get characterId => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get linkURL => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get prompt => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get hello => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get intro => throw _privateConstructorUsedError;
  @HiveField(8)
  int? get connectors => throw _privateConstructorUsedError;
  @HiveField(9)
  int? get followers => throw _privateConstructorUsedError;
  @HiveField(10)
  String? get uid => throw _privateConstructorUsedError;
  @HiveField(11)
  String? get idVoice => throw _privateConstructorUsedError;
  @HiveField(12)
  String? get voiceName => throw _privateConstructorUsedError;

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
      {@HiveField(1) CharacterModel? clientSecret,
      @HiveField(2) String? characterId,
      @HiveField(3) String? name,
      @HiveField(4) String? linkURL,
      @HiveField(5) String? prompt,
      @HiveField(6) String? hello,
      @HiveField(7) String? intro,
      @HiveField(8) int? connectors,
      @HiveField(9) int? followers,
      @HiveField(10) String? uid,
      @HiveField(11) String? idVoice,
      @HiveField(12) String? voiceName});

  $CharacterModelCopyWith<$Res>? get clientSecret;
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
    Object? clientSecret = freezed,
    Object? characterId = freezed,
    Object? name = freezed,
    Object? linkURL = freezed,
    Object? prompt = freezed,
    Object? hello = freezed,
    Object? intro = freezed,
    Object? connectors = freezed,
    Object? followers = freezed,
    Object? uid = freezed,
    Object? idVoice = freezed,
    Object? voiceName = freezed,
  }) {
    return _then(_value.copyWith(
      clientSecret: freezed == clientSecret
          ? _value.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as CharacterModel?,
      characterId: freezed == characterId
          ? _value.characterId
          : characterId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      linkURL: freezed == linkURL
          ? _value.linkURL
          : linkURL // ignore: cast_nullable_to_non_nullable
              as String?,
      prompt: freezed == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String?,
      hello: freezed == hello
          ? _value.hello
          : hello // ignore: cast_nullable_to_non_nullable
              as String?,
      intro: freezed == intro
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String?,
      connectors: freezed == connectors
          ? _value.connectors
          : connectors // ignore: cast_nullable_to_non_nullable
              as int?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int?,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      idVoice: freezed == idVoice
          ? _value.idVoice
          : idVoice // ignore: cast_nullable_to_non_nullable
              as String?,
      voiceName: freezed == voiceName
          ? _value.voiceName
          : voiceName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CharacterModelCopyWith<$Res>? get clientSecret {
    if (_value.clientSecret == null) {
      return null;
    }

    return $CharacterModelCopyWith<$Res>(_value.clientSecret!, (value) {
      return _then(_value.copyWith(clientSecret: value) as $Val);
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
      {@HiveField(1) CharacterModel? clientSecret,
      @HiveField(2) String? characterId,
      @HiveField(3) String? name,
      @HiveField(4) String? linkURL,
      @HiveField(5) String? prompt,
      @HiveField(6) String? hello,
      @HiveField(7) String? intro,
      @HiveField(8) int? connectors,
      @HiveField(9) int? followers,
      @HiveField(10) String? uid,
      @HiveField(11) String? idVoice,
      @HiveField(12) String? voiceName});

  @override
  $CharacterModelCopyWith<$Res>? get clientSecret;
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
    Object? clientSecret = freezed,
    Object? characterId = freezed,
    Object? name = freezed,
    Object? linkURL = freezed,
    Object? prompt = freezed,
    Object? hello = freezed,
    Object? intro = freezed,
    Object? connectors = freezed,
    Object? followers = freezed,
    Object? uid = freezed,
    Object? idVoice = freezed,
    Object? voiceName = freezed,
  }) {
    return _then(_$CharacterModelImpl(
      clientSecret: freezed == clientSecret
          ? _value.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as CharacterModel?,
      characterId: freezed == characterId
          ? _value.characterId
          : characterId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      linkURL: freezed == linkURL
          ? _value.linkURL
          : linkURL // ignore: cast_nullable_to_non_nullable
              as String?,
      prompt: freezed == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String?,
      hello: freezed == hello
          ? _value.hello
          : hello // ignore: cast_nullable_to_non_nullable
              as String?,
      intro: freezed == intro
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String?,
      connectors: freezed == connectors
          ? _value.connectors
          : connectors // ignore: cast_nullable_to_non_nullable
              as int?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int?,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      idVoice: freezed == idVoice
          ? _value.idVoice
          : idVoice // ignore: cast_nullable_to_non_nullable
              as String?,
      voiceName: freezed == voiceName
          ? _value.voiceName
          : voiceName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 1)
class _$CharacterModelImpl implements _CharacterModel {
  const _$CharacterModelImpl(
      {@HiveField(1) this.clientSecret,
      @HiveField(2) this.characterId,
      @HiveField(3) this.name,
      @HiveField(4) this.linkURL,
      @HiveField(5) this.prompt,
      @HiveField(6) this.hello,
      @HiveField(7) this.intro,
      @HiveField(8) this.connectors,
      @HiveField(9) this.followers,
      @HiveField(10) this.uid,
      @HiveField(11) this.idVoice,
      @HiveField(12) this.voiceName});

  factory _$CharacterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharacterModelImplFromJson(json);

  @override
  @HiveField(1)
  final CharacterModel? clientSecret;
  @override
  @HiveField(2)
  final String? characterId;
  @override
  @HiveField(3)
  final String? name;
  @override
  @HiveField(4)
  final String? linkURL;
  @override
  @HiveField(5)
  final String? prompt;
  @override
  @HiveField(6)
  final String? hello;
  @override
  @HiveField(7)
  final String? intro;
  @override
  @HiveField(8)
  final int? connectors;
  @override
  @HiveField(9)
  final int? followers;
  @override
  @HiveField(10)
  final String? uid;
  @override
  @HiveField(11)
  final String? idVoice;
  @override
  @HiveField(12)
  final String? voiceName;

  @override
  String toString() {
    return 'CharacterModel(clientSecret: $clientSecret, characterId: $characterId, name: $name, linkURL: $linkURL, prompt: $prompt, hello: $hello, intro: $intro, connectors: $connectors, followers: $followers, uid: $uid, idVoice: $idVoice, voiceName: $voiceName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterModelImpl &&
            (identical(other.clientSecret, clientSecret) ||
                other.clientSecret == clientSecret) &&
            (identical(other.characterId, characterId) ||
                other.characterId == characterId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.linkURL, linkURL) || other.linkURL == linkURL) &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            (identical(other.hello, hello) || other.hello == hello) &&
            (identical(other.intro, intro) || other.intro == intro) &&
            (identical(other.connectors, connectors) ||
                other.connectors == connectors) &&
            (identical(other.followers, followers) ||
                other.followers == followers) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.idVoice, idVoice) || other.idVoice == idVoice) &&
            (identical(other.voiceName, voiceName) ||
                other.voiceName == voiceName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      clientSecret,
      characterId,
      name,
      linkURL,
      prompt,
      hello,
      intro,
      connectors,
      followers,
      uid,
      idVoice,
      voiceName);

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

abstract class _CharacterModel implements CharacterModel {
  const factory _CharacterModel(
      {@HiveField(1) final CharacterModel? clientSecret,
      @HiveField(2) final String? characterId,
      @HiveField(3) final String? name,
      @HiveField(4) final String? linkURL,
      @HiveField(5) final String? prompt,
      @HiveField(6) final String? hello,
      @HiveField(7) final String? intro,
      @HiveField(8) final int? connectors,
      @HiveField(9) final int? followers,
      @HiveField(10) final String? uid,
      @HiveField(11) final String? idVoice,
      @HiveField(12) final String? voiceName}) = _$CharacterModelImpl;

  factory _CharacterModel.fromJson(Map<String, dynamic> json) =
      _$CharacterModelImpl.fromJson;

  @override
  @HiveField(1)
  CharacterModel? get clientSecret;
  @override
  @HiveField(2)
  String? get characterId;
  @override
  @HiveField(3)
  String? get name;
  @override
  @HiveField(4)
  String? get linkURL;
  @override
  @HiveField(5)
  String? get prompt;
  @override
  @HiveField(6)
  String? get hello;
  @override
  @HiveField(7)
  String? get intro;
  @override
  @HiveField(8)
  int? get connectors;
  @override
  @HiveField(9)
  int? get followers;
  @override
  @HiveField(10)
  String? get uid;
  @override
  @HiveField(11)
  String? get idVoice;
  @override
  @HiveField(12)
  String? get voiceName;
  @override
  @JsonKey(ignore: true)
  _$$CharacterModelImplCopyWith<_$CharacterModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
