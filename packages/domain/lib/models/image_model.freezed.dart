// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ImageModel _$ImageModelFromJson(Map<String, dynamic> json) {
  return _ImageModel.fromJson(json);
}

/// @nodoc
mixin _$ImageModel {
  String? get id => throw _privateConstructorUsedError;
  String? get linkUrl => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  int? get numberSet => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageModelCopyWith<ImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageModelCopyWith<$Res> {
  factory $ImageModelCopyWith(
          ImageModel value, $Res Function(ImageModel) then) =
      _$ImageModelCopyWithImpl<$Res, ImageModel>;
  @useResult
  $Res call({String? id, String? linkUrl, int? price, int? numberSet});
}

/// @nodoc
class _$ImageModelCopyWithImpl<$Res, $Val extends ImageModel>
    implements $ImageModelCopyWith<$Res> {
  _$ImageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? linkUrl = freezed,
    Object? price = freezed,
    Object? numberSet = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      linkUrl: freezed == linkUrl
          ? _value.linkUrl
          : linkUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      numberSet: freezed == numberSet
          ? _value.numberSet
          : numberSet // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageModelImplCopyWith<$Res>
    implements $ImageModelCopyWith<$Res> {
  factory _$$ImageModelImplCopyWith(
          _$ImageModelImpl value, $Res Function(_$ImageModelImpl) then) =
      __$$ImageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? linkUrl, int? price, int? numberSet});
}

/// @nodoc
class __$$ImageModelImplCopyWithImpl<$Res>
    extends _$ImageModelCopyWithImpl<$Res, _$ImageModelImpl>
    implements _$$ImageModelImplCopyWith<$Res> {
  __$$ImageModelImplCopyWithImpl(
      _$ImageModelImpl _value, $Res Function(_$ImageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? linkUrl = freezed,
    Object? price = freezed,
    Object? numberSet = freezed,
  }) {
    return _then(_$ImageModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      linkUrl: freezed == linkUrl
          ? _value.linkUrl
          : linkUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      numberSet: freezed == numberSet
          ? _value.numberSet
          : numberSet // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageModelImpl with DiagnosticableTreeMixin implements _ImageModel {
  const _$ImageModelImpl({this.id, this.linkUrl, this.price, this.numberSet});

  factory _$ImageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? linkUrl;
  @override
  final int? price;
  @override
  final int? numberSet;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImageModel(id: $id, linkUrl: $linkUrl, price: $price, numberSet: $numberSet)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImageModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('linkUrl', linkUrl))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('numberSet', numberSet));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.linkUrl, linkUrl) || other.linkUrl == linkUrl) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.numberSet, numberSet) ||
                other.numberSet == numberSet));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, linkUrl, price, numberSet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageModelImplCopyWith<_$ImageModelImpl> get copyWith =>
      __$$ImageModelImplCopyWithImpl<_$ImageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageModelImplToJson(
      this,
    );
  }
}

abstract class _ImageModel implements ImageModel {
  const factory _ImageModel(
      {final String? id,
      final String? linkUrl,
      final int? price,
      final int? numberSet}) = _$ImageModelImpl;

  factory _ImageModel.fromJson(Map<String, dynamic> json) =
      _$ImageModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get linkUrl;
  @override
  int? get price;
  @override
  int? get numberSet;
  @override
  @JsonKey(ignore: true)
  _$$ImageModelImplCopyWith<_$ImageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
