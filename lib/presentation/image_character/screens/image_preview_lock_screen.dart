import 'package:cached_network_image/cached_network_image.dart';
import 'package:core/di/di.dart';
import 'package:domain/domain.dart';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:theme/theme.dart';
import 'package:widget/image_builder/image_builder_widget.dart';

import '../blocs/image_character/image_character_bloc.dart';

class ImagePreviewLockScreen extends StatelessWidget {
  final ImageCharacterModel imageCharacterModel;
  const ImagePreviewLockScreen({super.key, required this.imageCharacterModel});

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
                        child: Stack(
                          children: [
                            Container(
                                width: 70.w,
                                height: 140.w,
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
                                      style: context.textTheme.displayMedium?.copyWith(
                                          fontWeight: FontWeight.bold, color: Colors.white),
                                    ),
                                    Text(
                                      "Wednesday, 13 December",
                                      maxLines: 1,
                                      style: context.textTheme.bodySmall?.copyWith(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ))
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
                              .add(OnClickSetLockScreen(imageCharacterModel, context));
                        },
                        child: Text(
                          "Set on Lock screen",
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
    ;
  }
}
