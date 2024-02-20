import 'package:domain/adapters/character_model_adapter/character_model_adapter.dart';
import 'package:hive/hive.dart';

import '../../adapters/app_box_name.dart';
import '../../adapters/favorite_character_adapter/favorite_character_adapter.dart';


abstract class FavoriteCharacterUseCase {
  static late Box<FavoriteCharacter> box;

  static open() async {
    box = await Hive.openBox<FavoriteCharacter>(AppBoxName.favoriteCharacter);
  }

  List<FavoriteCharacter> getItems();
  FavoriteCharacter? addCharacter(CharacterModel characterModel);
  Future<List<FavoriteCharacter>> removeCharacter(String characterId);
  bool checkFavorite(String characterId);
  Future<int> cleanAll();
}
