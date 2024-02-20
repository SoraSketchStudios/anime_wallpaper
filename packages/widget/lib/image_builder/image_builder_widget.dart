import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

class AppImageBuilderWidget extends StatelessWidget {
  final String linkImage;
  final BoxShape? shape;
  final double hide;
  const AppImageBuilderWidget({Key? key, required this.linkImage, this.shape, this.hide = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return shape == BoxShape.circle
        ? AspectRatio(
            aspectRatio: 1,
            child: Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                color: context.colorScheme.surface,
                shape: shape ?? BoxShape.rectangle,
              ),
              child: CachedNetworkImage(
                imageUrl: linkImage,
                fit: BoxFit.cover,
                progressIndicatorBuilder: (_, child, loadingProgress) {
                  return Center(
                    child: Stack(
                      children: [
                        CircularProgressIndicator(
                          value: loadingProgress.progress,
                          color: context.colorScheme.outline,
                          strokeWidth: 1,
                        ),
                        if (loadingProgress.progress != null)
                          Positioned(
                            top: 0,
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "${((loadingProgress.progress ?? 0) / 1 * 100).ceil()}%",
                                style: context.textTheme.bodySmall,
                              ),
                            ),
                          )
                      ],
                    ),
                  );
                },
                errorWidget: (context, url, error) => Container(),
              ),
            ),
          )
        : Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: context.colorScheme.surface,
              // color: Colors.red,
              shape: shape ?? BoxShape.rectangle,
            ),
            child: CachedNetworkImage(
              width: MediaQuery.of(context).size.width,
              imageUrl: linkImage,
              fit: BoxFit.cover,
              progressIndicatorBuilder: (_, child, loadingProgress) {
                return Center(
                  child: Stack(
                    children: [
                      CircularProgressIndicator(
                        value: loadingProgress.progress,
                        color: context.colorScheme.outline,
                        strokeWidth: 1,
                      ),
                      if (loadingProgress.progress != null)
                        Positioned(
                          top: 0,
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "${((loadingProgress.progress ?? 0) / 1 * 100).ceil()}%",
                              style: context.textTheme.bodySmall,
                            ),
                          ),
                        )
                    ],
                  ),
                );
              },
              errorWidget: (context, url, error) => Container(),
            ),
          );
  }
}

class AppImageBuilderScreen extends StatelessWidget {
  final String linkImage;
  const AppImageBuilderScreen({
    Key? key,
    required this.linkImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.rectangle,
      ),
      child: CachedNetworkImage(
        imageUrl: linkImage,
        fit: BoxFit.cover,
        progressIndicatorBuilder: (_, child, loadingProgress) {
          return Column(
            children: [
              Expanded(
                flex: 3,
                child: Center(
                  child: loadingProgress.progress != null
                      ? Stack(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              height: 10,
                              decoration: BoxDecoration(
                                  color: context.colorScheme.surface.withOpacity(0.5),
                                  borderRadius: const BorderRadius.all(Radius.circular(10))),
                            ),
                            Positioned(
                                child: Container(
                              width: ((loadingProgress.progress ?? 0) / 1 * 100).ceil() /
                                  100 *
                                  MediaQuery.of(context).size.width /
                                  2,
                              height: 10,
                              decoration: BoxDecoration(
                                  color: context.colorScheme.primary.withOpacity(0.5),
                                  borderRadius: const BorderRadius.all(Radius.circular(10))),
                            )),
                          ],
                        )
                      : const SizedBox.shrink(),
                ),
              ),
              const Expanded(flex: 4, child: SizedBox())
            ],
          );
        },
        errorWidget: (context, url, error) => Container(),
      ),
    );
  }
}
