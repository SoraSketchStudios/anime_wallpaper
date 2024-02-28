// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_lb4_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FilterLB4Param _$FilterLB4ParamFromJson(Map<String, dynamic> json) {
  return _FilterLB4Param.fromJson(json);
}

/// @nodoc
mixin _$FilterLB4Param {
  int? get offset => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  int? get skip => throw _privateConstructorUsedError;
  String? get order => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterLB4ParamCopyWith<FilterLB4Param> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterLB4ParamCopyWith<$Res> {
  factory $FilterLB4ParamCopyWith(
          FilterLB4Param value, $Res Function(FilterLB4Param) then) =
      _$FilterLB4ParamCopyWithImpl<$Res, FilterLB4Param>;
  @useResult
  $Res call({int? offset, int? limit, int? skip, String? order});
}

/// @nodoc
class _$FilterLB4ParamCopyWithImpl<$Res, $Val extends FilterLB4Param>
    implements $FilterLB4ParamCopyWith<$Res> {
  _$FilterLB4ParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = freezed,
    Object? limit = freezed,
    Object? skip = freezed,
    Object? order = freezed,
  }) {
    return _then(_value.copyWith(
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      skip: freezed == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterLB4ParamImplCopyWith<$Res>
    implements $FilterLB4ParamCopyWith<$Res> {
  factory _$$FilterLB4ParamImplCopyWith(_$FilterLB4ParamImpl value,
          $Res Function(_$FilterLB4ParamImpl) then) =
      __$$FilterLB4ParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? offset, int? limit, int? skip, String? order});
}

/// @nodoc
class __$$FilterLB4ParamImplCopyWithImpl<$Res>
    extends _$FilterLB4ParamCopyWithImpl<$Res, _$FilterLB4ParamImpl>
    implements _$$FilterLB4ParamImplCopyWith<$Res> {
  __$$FilterLB4ParamImplCopyWithImpl(
      _$FilterLB4ParamImpl _value, $Res Function(_$FilterLB4ParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = freezed,
    Object? limit = freezed,
    Object? skip = freezed,
    Object? order = freezed,
  }) {
    return _then(_$FilterLB4ParamImpl(
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      skip: freezed == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FilterLB4ParamImpl
    with DiagnosticableTreeMixin
    implements _FilterLB4Param {
  const _$FilterLB4ParamImpl({this.offset, this.limit, this.skip, this.order});

  factory _$FilterLB4ParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilterLB4ParamImplFromJson(json);

  @override
  final int? offset;
  @override
  final int? limit;
  @override
  final int? skip;
  @override
  final String? order;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FilterLB4Param(offset: $offset, limit: $limit, skip: $skip, order: $order)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FilterLB4Param'))
      ..add(DiagnosticsProperty('offset', offset))
      ..add(DiagnosticsProperty('limit', limit))
      ..add(DiagnosticsProperty('skip', skip))
      ..add(DiagnosticsProperty('order', order));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterLB4ParamImpl &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, offset, limit, skip, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterLB4ParamImplCopyWith<_$FilterLB4ParamImpl> get copyWith =>
      __$$FilterLB4ParamImplCopyWithImpl<_$FilterLB4ParamImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilterLB4ParamImplToJson(
      this,
    );
  }
}

abstract class _FilterLB4Param implements FilterLB4Param {
  const factory _FilterLB4Param(
      {final int? offset,
      final int? limit,
      final int? skip,
      final String? order}) = _$FilterLB4ParamImpl;

  factory _FilterLB4Param.fromJson(Map<String, dynamic> json) =
      _$FilterLB4ParamImpl.fromJson;

  @override
  int? get offset;
  @override
  int? get limit;
  @override
  int? get skip;
  @override
  String? get order;
  @override
  @JsonKey(ignore: true)
  _$$FilterLB4ParamImplCopyWith<_$FilterLB4ParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
