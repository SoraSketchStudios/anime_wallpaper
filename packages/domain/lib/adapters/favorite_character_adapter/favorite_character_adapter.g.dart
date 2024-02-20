// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_character_adapter.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FavoriteCharacterImplAdapter
    extends TypeAdapter<_$FavoriteCharacterImpl> {
  @override
  final int typeId = 0;

  @override
  _$FavoriteCharacterImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$FavoriteCharacterImpl(
      characterModel: fields[1] as CharacterModel?,
      createAt: fields[2] as DateTime?,
      idCharacter: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$FavoriteCharacterImpl obj) {
    writer
      ..writeByte(3)
      ..writeByte(1)
      ..write(obj.characterModel)
      ..writeByte(2)
      ..write(obj.createAt)
      ..writeByte(3)
      ..write(obj.idCharacter);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavoriteCharacterImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavoriteCharacterImpl _$$FavoriteCharacterImplFromJson(
        Map<String, dynamic> json) =>
    _$FavoriteCharacterImpl(
      characterModel: json['characterModel'] == null
          ? null
          : CharacterModel.fromJson(
              json['characterModel'] as Map<String, dynamic>),
      createAt: json['createAt'] == null
          ? null
          : DateTime.parse(json['createAt'] as String),
      idCharacter: json['idCharacter'] as String?,
    );

Map<String, dynamic> _$$FavoriteCharacterImplToJson(
        _$FavoriteCharacterImpl instance) =>
    <String, dynamic>{
      'characterModel': instance.characterModel,
      'createAt': instance.createAt?.toIso8601String(),
      'idCharacter': instance.idCharacter,
    };
