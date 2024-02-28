import 'package:cached_network_image/cached_network_image.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:frame_project/presentation/image_character/widgets/image_character_photo_view_widget/image_character_photo_view_footer.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:theme/theme.dart';
import '../widgets/image_character_photo_view_widget/image_character_photo_view_appbar.dart';

class ImageCharacterPhotoView extends StatefulWidget {
  final ImageCharacterModels imageCharacterModels;
  const ImageCharacterPhotoView({super.key, required this.imageCharacterModels});

  @override
  State<ImageCharacterPhotoView> createState() => _ImageCharacterPhotoViewState();
}

class _ImageCharacterPhotoViewState extends State<ImageCharacterPhotoView> {
  ValueNotifier<int> currentIndex = ValueNotifier(0);
  @override
  void initState() {
    currentIndex.value = widget.imageCharacterModels.index;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: AnimatedBuilder(
                animation: currentIndex,
                builder: (_, __) => CachedNetworkImage(
                  imageUrl:
                      widget.imageCharacterModels.imageCharacters[currentIndex.value].linkUrl ?? "",
                  filterQuality: FilterQuality.low,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            BackdropFilter(
              filter: ui.ImageFilter.blur(sigmaX: 30, sigmaY: 30),
              child: Container(
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.1)),
              ),
            ),
          ],
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          extendBodyBehindAppBar: true,
          body: Column(
            children: [
              ImageCharacterPhotoViewAppbar(
                imageCharacterModels: widget.imageCharacterModels.imageCharacters,
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(bottom: 7.27.h, top: 1.h),
                  child: Stack(
                    children: [
                      AspectRatio(
                        aspectRatio: 0.5,
                        child: Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2.9.w),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 10,
                                    color: Colors.black.withOpacity(0.5),
                                    offset: const Offset(1, 3))
                              ]),
                          child: PhotoViewGallery.builder(
                            scrollPhysics: const BouncingScrollPhysics(),
                            builder: (BuildContext context, int index) {
                              return PhotoViewGalleryPageOptions(
                                imageProvider: CachedNetworkImageProvider(
                                    widget.imageCharacterModels.imageCharacters[index].linkUrl ??
                                        ""),
                                initialScale: PhotoViewComputedScale.covered,
                                minScale: PhotoViewComputedScale.covered,
                                maxScale: 3.0,
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
                                      : event.cumulativeBytesLoaded /
                                          (event.expectedTotalBytes ?? 1),
                                ),
                              ),
                            ),
                            // backgroundDecoration: widget.backgroundDecoration,
                            pageController:
                                PageController(initialPage: widget.imageCharacterModels.index),
                            onPageChanged: (index) {
                              currentIndex.value = index;
                              // print("change: $index");
                            },
                          ),
                        ),
                      ),
                      AnimatedBuilder(
                        animation: currentIndex,
                        builder: (_, __) => Positioned(
                            left: 0,
                            right: 0,
                            bottom: 1.h,
                            child: ImageCharacterPhotoViewFooter(
                              imageCharacterModel:
                                  widget.imageCharacterModels.imageCharacters[currentIndex.value],
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ImageCharacterModels {
  final List<ImageModel> imageCharacters;
  final int index;
  ImageCharacterModels(this.imageCharacters, this.index);
}
