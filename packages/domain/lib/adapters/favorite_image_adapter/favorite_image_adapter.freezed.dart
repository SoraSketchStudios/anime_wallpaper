// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_image_adapter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FavoriteImage _$FavoriteImageFromJson(Map<String, dynamic> json) {
  return _FavoriteImage.fromJson(json);
}

/// @nodoc
mixin _$FavoriteImage {
  @HiveField(1)
  String? get linkImage => throw _privateConstructorUsedError;
  @HiveField(2)
  DateTime? get createAt => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get idCharacter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoriteImageCopyWith<FavoriteImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteImageCopyWith<$Res> {
  factory $FavoriteImageCopyWith(
          FavoriteImage value, $Res Function(FavoriteImage) then) =
      _$FavoriteImageCopyWithImpl<$Res, FavoriteImage>;
  @useResult
  $Res call(
      {@HiveField(1) String? linkImage,
      @HiveField(2) DateTime? createAt,
      @HiveField(3) String? idCharacter});
}

/// @nodoc
class _$FavoriteImageCopyWithImpl<$Res, $Val extends FavoriteImage>
    implements $FavoriteImageCopyWith<$Res> {
  _$FavoriteImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? linkImage = freezed,
    Object? createAt = freezed,
    Object? idCharacter = freezed,
  }) {
    return _then(_value.copyWith(
      linkImage: freezed == linkImage
          ? _value.linkImage
          : linkImage // ignore: cast_nullable_to_non_nullable
              as String?,
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
}

/// @nodoc
abstract class _$$FavoriteImageImplCopyWith<$Res>
    implements $FavoriteImageCopyWith<$Res> {
  factory _$$FavoriteImageImplCopyWith(
          _$FavoriteImageImpl value, $Res Function(_$FavoriteImageImpl) then) =
      __$$FavoriteImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(1) String? linkImage,
      @HiveField(2) DateTime? createAt,
      @HiveField(3) String? idCharacter});
}

/// @nodoc
class __$$FavoriteImageImplCopyWithImpl<$Res>
    extends _$FavoriteImageCopyWithImpl<$Res, _$FavoriteImageImpl>
    implements _$$FavoriteImageImplCopyWith<$Res> {
  __$$FavoriteImageImplCopyWithImpl(
      _$FavoriteImageImpl _value, $Res Function(_$FavoriteImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? linkImage = freezed,
    Object? createAt = freezed,
    Object? idCharacter = freezed,
  }) {
    return _then(_$FavoriteImageImpl(
      linkImage: freezed == linkImage
          ? _value.linkImage
          : linkImage // ignore: cast_nullable_to_non_nullable
              as String?,
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
@HiveType(typeId: 2)
class _$FavoriteImageImpl implements _FavoriteImage {
  const _$FavoriteImageImpl(
      {@HiveField(1) this.linkImage,
      @HiveField(2) this.createAt,
      @HiveField(3) this.idCharacter});

  factory _$FavoriteImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavoriteImageImplFromJson(json);

  @override
  @HiveField(1)
  final String? linkImage;
  @override
  @HiveField(2)
  final DateTime? createAt;
  @override
  @HiveField(3)
  final String? idCharacter;

  @override
  String toString() {
    return 'FavoriteImage(linkImage: $linkImage, createAt: $createAt, idCharacter: $idCharacter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteImageImpl &&
            (identical(other.linkImage, linkImage) ||
                other.linkImage == linkImage) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.idCharacter, idCharacter) ||
                other.idCharacter == idCharacter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, linkImage, createAt, idCharacter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteImageImplCopyWith<_$FavoriteImageImpl> get copyWith =>
      __$$FavoriteImageImplCopyWithImpl<_$FavoriteImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavoriteImageImplToJson(
      this,
    );
  }
}

abstract class _FavoriteImage implements FavoriteImage {
  const factory _FavoriteImage(
      {@HiveField(1) final String? linkImage,
      @HiveField(2) final DateTime? createAt,
      @HiveField(3) final String? idCharacter}) = _$FavoriteImageImpl;

  factory _FavoriteImage.fromJson(Map<String, dynamic> json) =
      _$FavoriteImageImpl.fromJson;

  @override
  @HiveField(1)
  String? get linkImage;
  @override
  @HiveField(2)
  DateTime? get createAt;
  @override
  @HiveField(3)
  String? get idCharacter;
  @override
  @JsonKey(ignore: true)
  _$$FavoriteImageImplCopyWith<_$FavoriteImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
