import 'package:core/core.dart';
import 'package:data/service_server/service/image_service.dart';
import 'package:domain/domain.dart';

@Injectable(as: ImageUseCase)
class ImageUseCaseImp implements ImageUseCase {
  final DioInfo dioInfo;
  ImageUseCaseImp(this.dioInfo);

  late final ImageService imageService = ImageService(dioInfo.dio());
  @override
  Future<List<ImageModel>?> getNewImage() async {
    final data = await imageService
        .getImage(const FilterLB4Param(limit: 30, offset: 0, order: "price DESC", skip: 0));
    return data;
  }

  @override
  Future<List<ImageModel>?> getRecentImage() async {
    final data = await imageService
        .getImage(const FilterLB4Param(limit: 30, offset: 0, order: "string", skip: 0));
    return data;
  }

  @override
  Future<List<ImageModel>?> getTrendingImage() async {
    final data = await imageService.getTrendImage();
    return data;
  }

  @override
  Future<String?> setWallpaper(String idImage) {
    return imageService.setWallpaperImageById(idImage);
  }

  @override
  Future<List<ImageModel>?> searchImageByName(String q) {
    return imageService.searchImageByName(q);
  }
}
