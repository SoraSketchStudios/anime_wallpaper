import 'package:cached_network_image/cached_network_image.dart';
import 'package:core/di/di.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:theme/theme.dart';
import 'dart:ui' as ui;
import 'package:widget/image_builder/image_builder_widget.dart';

import '../blocs/image_character/image_character_bloc.dart';

class ImagePreviewHomeScreen extends StatefulWidget {
  final ImageModel imageCharacterModel;
  const ImagePreviewHomeScreen({super.key, required this.imageCharacterModel});

  @override
  State<ImagePreviewHomeScreen> createState() => _ImagePreviewHomeScreenState();
}

class _ImagePreviewHomeScreenState extends State<ImagePreviewHomeScreen> {
  final ValueNotifier<bool> isDone = ValueNotifier(false);
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
                    imageUrl: widget.imageCharacterModel.linkUrl ?? "",
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
                          padding: EdgeInsets.only(left: 6.w, right: 6.w, top: 6.w),
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
                                    linkImage: widget.imageCharacterModel.linkUrl ?? "",
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
                                                          borderRadius: BorderRadius.circular(1.w),
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
                        ),
                      ],
                    ),
                  ),
                  AnimatedBuilder(
                    animation: isDone,
                    builder: (_, __) => isDone.value
                        ? Container(
                            margin: EdgeInsets.all(2.w),
                            padding: EdgeInsets.symmetric(vertical: 2.08.w, horizontal: 2.7.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2.w),
                              color: Colors.white,
                            ),
                            child: Text(
                              "Wallpaper is applied",
                              style: context.textTheme.bodySmall,
                            ),
                          )
                        : Container(
                            margin: EdgeInsets.all(2.w),
                            padding: EdgeInsets.symmetric(vertical: 2.08.w, horizontal: 2.7.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2.w),
                              color: Colors.transparent,
                            ),
                            child: Text(
                              "",
                              style: context.textTheme.bodySmall,
                            ),
                          ),
                  ),
                  SizedBox(
                    width: 80.w,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff191E31),
                        ),
                        onPressed: () {
                          getIt<ImageCharacterBloc>()
                              .add(OnClickSetHomeScreen(widget.imageCharacterModel, context, () {
                            isDone.value = true;
                          }));
                        },
                        child: Text(
                          "Set on Home screen",
                          style: context.textTheme.titleMedium?.copyWith(color: Colors.white),
                        )),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
