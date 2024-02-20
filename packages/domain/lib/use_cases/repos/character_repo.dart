import 'package:domain/models/image_character_model.dart';

import '../../adapters/character_model_adapter/character_model_adapter.dart';

abstract class CharacterRepo {
  Future<List<CharacterModel>?> getCharacters();
  Future<List<ImageCharacterModel>?> getImageCharacters(String characterId);
}
