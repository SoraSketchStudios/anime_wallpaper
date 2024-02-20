import 'package:core/core.dart';
import 'package:domain/adapters/favorite_character_adapter/favorite_character_adapter.dart';
import 'package:domain/domain.dart';

@Injectable(as: FavoriteCharacterUseCase)
class FavoriteCharacterControllerImp implements FavoriteCharacterUseCase {
  @override
  FavoriteCharacter? addCharacter(CharacterModel characterModel) {
    try {
      final box = FavoriteCharacterUseCase.box;
      box.add(FavoriteCharacter(
        characterModel: characterModel,
        createAt: DateTime.now(),
        idCharacter: characterModel.characterId,
      ));
      return FavoriteCharacter(
        characterModel: characterModel,
        createAt: DateTime.now(),
        idCharacter: characterModel.characterId,
      );
    } catch (e) {
      return null;
    }
  }

  @override
  Future<int> cleanAll() async {
    final box = FavoriteCharacterUseCase.box;
    try {
      await box.clear();
      return box.length;
    } catch (e) {
      return 0;
    }
  }

  @override
  List<FavoriteCharacter> getItems() {
    final box = FavoriteCharacterUseCase.box;
    final newList = [...box.values.toList()];
    newList.sort(
      (e1, e2) => (e2.createAt ?? DateTime.now()).millisecondsSinceEpoch.compareTo(
            (e1.createAt ?? DateTime.now()).millisecondsSinceEpoch,
          ),
    );
    return newList;
  }

  @override
  Future<List<FavoriteCharacter>> removeCharacter(String characterId) async {
    final box = FavoriteCharacterUseCase.box;
    final newList = box.values.toList();
    final index = newList.indexWhere((element) => element.idCharacter == characterId);
    await box.deleteAt(index);
    return box.values.toList();
  }

  @override
  bool checkFavorite(String characterId) {
    final box = FavoriteCharacterUseCase.box.values.toList();
    if (box.any((element) => element.idCharacter == characterId)) {
      return true;
    }
    return false;
  }
}
