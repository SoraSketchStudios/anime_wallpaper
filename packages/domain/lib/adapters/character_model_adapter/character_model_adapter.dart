import 'package:hive/hive.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'character_model_adapter.g.dart';
part 'character_model_adapter.freezed.dart';

@freezed
class CharacterModel with _$CharacterModel {
  @HiveType(typeId: 1)
  const factory CharacterModel({
    @HiveField(1) CharacterModel? clientSecret,
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
    @HiveField(12) String? voiceName,
  }) = _CharacterModel;

  factory CharacterModel.fromJson(Map<String, dynamic> json) => _$CharacterModelFromJson(json);
}
