// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// required: associates our `main.dart` with the code generated by Freezed
part 'filter_lb4_param.freezed.dart';
// optional: Since our Person class is serializable, we must add this line.
// But if Person was not serializable, we could skip it.
part 'filter_lb4_param.g.dart';

@freezed
class FilterLB4Param with _$FilterLB4Param {
  const factory FilterLB4Param({
     int? offset,
     int? limit,
     int? skip,
    String? order
  }) = _FilterLB4Param;

  factory FilterLB4Param.fromJson(Map<String, Object?> json)
  => _$FilterLB4ParamFromJson(json);
}