import 'package:cached_network_image/cached_network_image.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:frame_project/presentation/image_character/widgets/image_character_photo_view_widget/image_character_photo_view_footer.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import '../widgets/image_character_photo_view_widget/image_character_photo_view_appbar.dart';

class ImageCharacterPhotoView extends StatefulWidget {
  final ImageCharacterModels imageCharacterModels;
  const ImageCharacterPhotoView({super.key, required this.imageCharacterModels});

  @override
  State<ImageCharacterPhotoView> createState() => _ImageCharacterPhotoViewState();
}

class _ImageCharacterPhotoViewState extends State<ImageCharacterPhotoView> {
  ValueNotifier<int> index = ValueNotifier(0);
  @override
  void initState() {
    index.value = widget.imageCharacterModels.index;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          ImageCharacterPhotoViewAppbar(
            imageCharacterModels: widget.imageCharacterModels.imageCharacters,
          ),
          Expanded(
            child: PhotoViewGallery.builder(
              scrollPhysics: const BouncingScrollPhysics(),
              builder: (BuildContext context, int index) {
                return PhotoViewGalleryPageOptions(
                  imageProvider: CachedNetworkImageProvider(
                      widget.imageCharacterModels.imageCharacters[index].linkUrl ?? ""),
                  initialScale: PhotoViewComputedScale.contained,
                  heroAttributes: PhotoViewHeroAttributes(
                      tag: widget.imageCharacterModels.imageCharacters[index]),
                );
              },
              itemCount: widget.imageCharacterModels.imageCharacters.length,
              loadingBuilder: (context, event) => Center(
                child: SizedBox(
                  width: 20.0,
                  height: 20.0,
                  child: CircularProgressIndicator(
                    value: event == null
                        ? 0
                        : event.cumulativeBytesLoaded / (event.expectedTotalBytes ?? 1),
                  ),
                ),
              ),
              // backgroundDecoration: widget.backgroundDecoration,
              pageController: PageController(initialPage: widget.imageCharacterModels.index),
              onPageChanged: (index) {
                print("change: $index");
              },
            ),
          ),
          AnimatedBuilder(
            animation: index,
            builder: (_, __) => ImageCharacterPhotoViewFooter(
              imageCharacterModel: widget.imageCharacterModels.imageCharacters[index.value],
            ),
          ),
        ],
      ),
    );
  }
}

class ImageCharacterModels {
  final List<ImageCharacterModel> imageCharacters;
  final int index;
  ImageCharacterModels(this.imageCharacters, this.index);
}
