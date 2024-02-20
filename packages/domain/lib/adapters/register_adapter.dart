import 'package:domain/adapters/favorite_image_adapter/favorite_image_adapter.dart';
import 'package:domain/domain.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'favorite_character_adapter/favorite_character_adapter.dart';

Future<void> registerAdapter() async {
  await Hive.initFlutter();
  Hive.registerAdapter(FavoriteCharacterImplAdapter());
  Hive.registerAdapter(CharacterModelImplAdapter());
  Hive.registerAdapter(FavoriteImageImplAdapter());
}

Future<void> opeHive() async {
  await FavoriteCharacterUseCase.open();
  await FavoriteImageUseCase.open();
}
