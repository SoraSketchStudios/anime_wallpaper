import 'package:core/core.dart';
import 'package:domain/domain.dart';

@Injectable(as: FavoriteImageUseCase)
class FavoriteImageControllerImp implements FavoriteImageUseCase {
  @override
  FavoriteImage? addCharacter(String linkImage) {
    try {
      final box = FavoriteImageUseCase.box;
      box.add(FavoriteImage(
        linkImage: linkImage,
        createAt: DateTime.now(),
      ));
      return FavoriteImage(
        linkImage: linkImage,
        createAt: DateTime.now(),
      );
    } catch (e) {
      return null;
    }
  }

  @override
  Future<int> cleanAll() async {
    final box = FavoriteImageUseCase.box;
    try {
      await box.clear();
      return box.length;
    } catch (e) {
      return 0;
    }
  }

  @override
  List<FavoriteImage> getItems() {
    final box = FavoriteImageUseCase.box;
    final newList = [...box.values.toList()];
    newList.sort(
      (e1, e2) => (e2.createAt ?? DateTime.now()).millisecondsSinceEpoch.compareTo(
            (e1.createAt ?? DateTime.now()).millisecondsSinceEpoch,
          ),
    );
    return newList;
  }

  @override
  Future<List<FavoriteImage>> removeCharacter(String linkImage) async {
    final box = FavoriteImageUseCase.box;
    final newList = box.values.toList();
    final index = newList.indexWhere((element) => element.linkImage == linkImage);
    await box.deleteAt(index);
    return box.values.toList();
  }

  @override
  bool checkFavorite(String linkUrl) {
    final box = FavoriteImageUseCase.box.values.toList();
    if (box.any((element) => element.linkImage == linkUrl)) {
      return true;
    }
    return false;
  }
}
