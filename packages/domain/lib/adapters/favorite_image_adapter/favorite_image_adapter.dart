import 'package:domain/domain.dart';
import 'package:hive/hive.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_image_adapter.g.dart';
part 'favorite_image_adapter.freezed.dart';

@freezed
class FavoriteImage with _$FavoriteImage {
  @HiveType(typeId: 2)
  const factory FavoriteImage({
    @HiveField(1) String? linkImage,
    @HiveField(2) DateTime? createAt,
    @HiveField(3) String? idCharacter,
  }) = _FavoriteImage;

  factory FavoriteImage.fromJson(Map<String, dynamic> json) =>
      _$FavoriteImageFromJson(json);
}
