import 'dart:async';
import 'package:dio/dio.dart';
import 'package:domain/domain.dart';
import 'package:retrofit/retrofit.dart';

part 'image_service.g.dart';

@RestApi(
  baseUrl: "https://gpt.getdata.one",
)
abstract class ImageService {
  factory ImageService(Dio dio, {String baseUrl}) = _ImageService;

  @GET("/image-characters")
  Future<List<ImageModel>> getImage(
    @Query("filter") FilterLB4Param filterLB4Param,
  );

  @GET("/image-trend")
  Future<List<ImageModel>> getTrendImage();

  @PATCH("/set-wallpaper-image/{id}")
  Future<String> setWallpaperImageById(@Path("id") String idImage);

  @GET("/search-image-by-name")
  Future<List<ImageModel>> searchImageByName(@Query("name") String name);
}
