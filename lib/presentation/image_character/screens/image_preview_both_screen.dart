import 'package:cached_network_image/cached_network_image.dart';
import 'package:core/di/di.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:frame_project/presentation/image_character/blocs/image_character/image_character_bloc.dart';
import 'package:theme/theme.dart';
import 'package:widget/image_builder/image_builder_widget.dart';
import 'package:widget/widget.dart';

class ImagePreviewBothScreen extends StatelessWidget {
  final ImageCharacterModel imageCharacterModel;
  const ImagePreviewBothScreen({super.key, required this.imageCharacterModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 100.w,
        height: 100.h,
        child: Stack(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: CachedNetworkImage(
                    imageUrl: imageCharacterModel.linkUrl ?? "",
                    filterQuality: FilterQuality.low,
                    fit: BoxFit.cover,
                  ),
                ),
                BackdropFilter(
                  filter: ui.ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white.withOpacity(0.1)),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 100.w,
              height: 100.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SafeArea(
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Image.asset(
                              AppPathAsset.iconBack,
                              width: 7.22.w,
                              color: Colors.white,
                            ))
                      ],
                    ),
                  ),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(6.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Stack(
                              children: [
                                Container(
                                    width: 40.w,
                                    height: 80.w,
                                    clipBehavior: Clip.hardEdge,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(2.9.w),
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 10,
                                              color: Colors.black.withOpacity(0.5),
                                              offset: const Offset(1, 3))
                                        ]),
                                    child: AppImageBuilderWidget(
                                      linkImage: imageCharacterModel.linkUrl ?? "",
                                    )),
                                Positioned(
                                    top: 10.41.w,
                                    left: 1.w,
                                    right: 1.w,
                                    child: Column(
                                      children: [
                                        Text(
                                          "9:41",
                                          style: context.textTheme.displaySmall?.copyWith(
                                              fontWeight: FontWeight.bold, color: Colors.white),
                                        ),
                                        Text(
                                          "Wednesday, 13 December",
                                          maxLines: 1,
                                          style: context.textTheme.bodySmall?.copyWith(
                                              color: Colors.white,
                                              fontSize:
                                                  (context.textTheme.bodySmall?.fontSize ?? 10) /
                                                      3 *
                                                      2),
                                        ),
                                      ],
                                    ))
                              ],
                            ),
                            Icon(
                              Icons.link,
                              size: 5.27.w,
                              color: Colors.white,
                            ),
                            Stack(
                              children: [
                                Container(
                                    width: 40.w,
                                    height: 80.w,
                                    clipBehavior: Clip.hardEdge,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(2.9.w),
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 10,
                                              color: Colors.black.withOpacity(0.5),
                                              offset: const Offset(1, 3))
                                        ]),
                                    child: AppImageBuilderWidget(
                                      linkImage: imageCharacterModel.linkUrl ?? "",
                                    )),
                                Positioned(
                                    top: 3.w,
                                    left: 1.w,
                                    right: 1.w,
                                    bottom: 3.w,
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: GridView.count(
                                            crossAxisCount: 4,
                                            crossAxisSpacing: 2.7.w,
                                            mainAxisSpacing: 2.7.w,
                                            padding: EdgeInsets.all(2.7.w),
                                            shrinkWrap: true,
                                            children: [
                                              ...List.generate(
                                                  16,
                                                  (index) => Container(
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius.circular(1.w),
                                                            color: Colors.white.withOpacity(0.5)),
                                                      ))
                                            ],
                                          ),
                                        ),
                                        GridView.count(
                                          crossAxisCount: 4,
                                          crossAxisSpacing: 2.7.w,
                                          mainAxisSpacing: 2.7.w,
                                          padding: EdgeInsets.all(2.7.w),
                                          shrinkWrap: true,
                                          children: [
                                            ...List.generate(
                                                4,
                                                (index) => Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(1.w),
                                                          color: Colors.white.withOpacity(0.5)),
                                                    ))
                                          ],
                                        )
                                      ],
                                    ))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
                  SizedBox(
                    width: 80.w,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff191E31),
                        ),
                        onPressed: () {
                          getIt<ImageCharacterBloc>()
                              .add(OnClickSetBothScreen(imageCharacterModel, context));
                        },
                        child: Text(
                          "Set on Lock and Home screens",
                          style: context.textTheme.titleMedium?.copyWith(color: Colors.white),
                        )),
                  ),
                  SizedBox(
                    height: 4.h,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
