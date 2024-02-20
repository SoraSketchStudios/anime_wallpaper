// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_image_adapter.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FavoriteImageImplAdapter extends TypeAdapter<_$FavoriteImageImpl> {
  @override
  final int typeId = 2;

  @override
  _$FavoriteImageImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$FavoriteImageImpl(
      linkImage: fields[1] as String?,
      createAt: fields[2] as DateTime?,
      idCharacter: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$FavoriteImageImpl obj) {
    writer
      ..writeByte(3)
      ..writeByte(1)
      ..write(obj.linkImage)
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
      other is FavoriteImageImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavoriteImageImpl _$$FavoriteImageImplFromJson(Map<String, dynamic> json) =>
    _$FavoriteImageImpl(
      linkImage: json['linkImage'] as String?,
      createAt: json['createAt'] == null
          ? null
          : DateTime.parse(json['createAt'] as String),
      idCharacter: json['idCharacter'] as String?,
    );

Map<String, dynamic> _$$FavoriteImageImplToJson(_$FavoriteImageImpl instance) =>
    <String, dynamic>{
      'linkImage': instance.linkImage,
      'createAt': instance.createAt?.toIso8601String(),
      'idCharacter': instance.idCharacter,
    };
