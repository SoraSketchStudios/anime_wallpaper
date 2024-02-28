import 'package:domain/models/image_character_model.dart';
import 'package:domain/models/image_model.dart';

import '../../adapters/character_model_adapter/character_model_adapter.dart';

abstract class ImageUseCase {
  Future<List<ImageModel>?> getTrendingImage();
  Future<List<ImageModel>?> getNewImage();
  Future<List<ImageModel>?> getRecentImage();
  Future<String?> setWallpaper(String idImage);
  Future<List<ImageModel>?> searchImageByName(String q);
}
