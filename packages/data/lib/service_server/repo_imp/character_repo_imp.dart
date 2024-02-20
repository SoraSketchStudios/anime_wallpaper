import 'package:core/core.dart';
import 'package:data/service_server/service/character_service.dart';
import 'package:domain/domain.dart';

@Injectable(as: CharacterRepo)
class CharacterRepoImp implements CharacterRepo {
  final DioInfo dioInfo;
  CharacterRepoImp(this.dioInfo);

  late final CharacterService characterService = CharacterService(dioInfo.dio());

  @override
  Future<List<CharacterModel>> getCharacters() {
    return characterService
        .getCharacter(["6552fbe1f5334ceb53e4a0d7", "6552fd0ef5334ceb53e4a0d8"], "", null);
  }

  @override
  Future<List<ImageCharacterModel>> getImageCharacters(String characterId) {
    return characterService.getImageCharacters(characterId);
  }
}
