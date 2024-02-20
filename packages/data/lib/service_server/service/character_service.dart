import 'dart:async';
import 'package:dio/dio.dart';
import 'package:domain/domain.dart';
import 'package:retrofit/retrofit.dart';

part 'character_service.g.dart';

@RestApi(
  baseUrl: "https://gpt.getdata.one",
)
abstract class CharacterService {
  factory CharacterService(Dio dio, {String baseUrl}) = _CharacterService;

  @GET("/characters/search")
  Future<List<CharacterModel>> getCharacter(@Query("categories") List<String> categories,
      @Query("name") String name, @Query("uid") String? uid);

  @GET("/image-characters/{characterId}")
  Future<List<ImageCharacterModel>> getImageCharacters(@Path("characterId") String characterId);
}
