import 'package:cached_network_image/cached_network_image.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:theme/theme.dart';

class ImageCharacterPhotoViewWidget extends StatelessWidget {
  final ImageCharacterModel imageCharacterModel;
  const ImageCharacterPhotoViewWidget({super.key, required this.imageCharacterModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: PhotoView(
        minScale: PhotoViewComputedScale.contained,
        maxScale: PhotoViewComputedScale.contained * 2.5,
        imageProvider: CachedNetworkImageProvider(
          imageCharacterModel.linkUrl ?? "",
        ),
        loadingBuilder: (_, imageChunkEvent) {
          return Center(
            child: Stack(
              children: [
                CircularProgressIndicator(
                  value: (imageChunkEvent?.cumulativeBytesLoaded.ceilToDouble() ?? 1.0) /
                      (imageChunkEvent?.expectedTotalBytes ?? 1),
                  color: context.colorScheme.outline,
                  strokeWidth: 1,
                ),
                Positioned(
                  top: 0,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "${((imageChunkEvent?.cumulativeBytesLoaded.ceilToDouble() ?? 0) / (imageChunkEvent?.expectedTotalBytes ?? 1) * 100).ceil()}%",
                      style: context.textTheme.bodySmall,
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
