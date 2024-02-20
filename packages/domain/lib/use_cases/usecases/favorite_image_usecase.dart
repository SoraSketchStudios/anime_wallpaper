import 'package:domain/adapters/favorite_image_adapter/favorite_image_adapter.dart';
import 'package:hive/hive.dart';

import '../../adapters/app_box_name.dart';
import '../../adapters/favorite_character_adapter/favorite_character_adapter.dart';

abstract class FavoriteImageUseCase {
  static late Box<FavoriteImage> box;

  static open() async {
    box = await Hive.openBox<FavoriteImage>(AppBoxName.favoriteImage);
  }

  List<FavoriteImage> getItems();
  FavoriteImage? addCharacter(String linkImage);
  Future<List<FavoriteImage>> removeCharacter(String linkImage);
  bool checkFavorite(String linkImage);
  Future<int> cleanAll();
}
