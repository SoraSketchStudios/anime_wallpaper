// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_model_adapter.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CharacterModelImplAdapter extends TypeAdapter<_$CharacterModelImpl> {
  @override
  final int typeId = 1;

  @override
  _$CharacterModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$CharacterModelImpl(
      clientSecret: fields[1] as CharacterModel?,
      characterId: fields[2] as String?,
      name: fields[3] as String?,
      linkURL: fields[4] as String?,
      prompt: fields[5] as String?,
      hello: fields[6] as String?,
      intro: fields[7] as String?,
      connectors: fields[8] as int?,
      followers: fields[9] as int?,
      uid: fields[10] as String?,
      idVoice: fields[11] as String?,
      voiceName: fields[12] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$CharacterModelImpl obj) {
    writer
      ..writeByte(12)
      ..writeByte(1)
      ..write(obj.clientSecret)
      ..writeByte(2)
      ..write(obj.characterId)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.linkURL)
      ..writeByte(5)
      ..write(obj.prompt)
      ..writeByte(6)
      ..write(obj.hello)
      ..writeByte(7)
      ..write(obj.intro)
      ..writeByte(8)
      ..write(obj.connectors)
      ..writeByte(9)
      ..write(obj.followers)
      ..writeByte(10)
      ..write(obj.uid)
      ..writeByte(11)
      ..write(obj.idVoice)
      ..writeByte(12)
      ..write(obj.voiceName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CharacterModelImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CharacterModelImpl _$$CharacterModelImplFromJson(Map<String, dynamic> json) =>
    _$CharacterModelImpl(
      clientSecret: json['clientSecret'] == null
          ? null
          : CharacterModel.fromJson(
              json['clientSecret'] as Map<String, dynamic>),
      characterId: json['characterId'] as String?,
      name: json['name'] as String?,
      linkURL: json['linkURL'] as String?,
      prompt: json['prompt'] as String?,
      hello: json['hello'] as String?,
      intro: json['intro'] as String?,
      connectors: json['connectors'] as int?,
      followers: json['followers'] as int?,
      uid: json['uid'] as String?,
      idVoice: json['idVoice'] as String?,
      voiceName: json['voiceName'] as String?,
    );

Map<String, dynamic> _$$CharacterModelImplToJson(
        _$CharacterModelImpl instance) =>
    <String, dynamic>{
      'clientSecret': instance.clientSecret,
      'characterId': instance.characterId,
      'name': instance.name,
      'linkURL': instance.linkURL,
      'prompt': instance.prompt,
      'hello': instance.hello,
      'intro': instance.intro,
      'connectors': instance.connectors,
      'followers': instance.followers,
      'uid': instance.uid,
      'idVoice': instance.idVoice,
      'voiceName': instance.voiceName,
    };
