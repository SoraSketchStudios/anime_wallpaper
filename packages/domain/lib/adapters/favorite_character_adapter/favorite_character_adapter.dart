import 'package:domain/domain.dart';
import 'package:hive/hive.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_character_adapter.g.dart';
part 'favorite_character_adapter.freezed.dart';

@freezed
class FavoriteCharacter with _$FavoriteCharacter {
  @HiveType(typeId: 0)
  const factory FavoriteCharacter({
    @HiveField(1) CharacterModel? characterModel,
    @HiveField(2) DateTime? createAt,
    @HiveField(3) String? idCharacter,
  }) = _FavoriteCharacter;

  factory FavoriteCharacter.fromJson(Map<String, dynamic> json) =>
      _$FavoriteCharacterFromJson(json);
}
