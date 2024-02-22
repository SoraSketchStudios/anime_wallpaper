import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:frame_project/routes/route_names.dart';
import 'package:theme/theme.dart';
import 'package:widget/widget.dart';

import '../../../../core/blocs/favorite_image/favorite_image_bloc.dart';

class ImageCharacterPhotoViewFooter extends StatelessWidget {
  final ImageCharacterModel imageCharacterModel;
  const ImageCharacterPhotoViewFooter({super.key, required this.imageCharacterModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.all(1.5.w),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: const Color(0xff191E31).withOpacity(0.53)),
                child: Image.asset(
                  AppPathAsset.iconShare,
                  color: Colors.white,
                  width: 5.w,
                  height: 5.w,
                ),
              ),
            ),
            SizedBox(
              height: 1.24.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 1.w, horizontal: 2.w),
              decoration: BoxDecoration(
                  color: const Color(0xff191E31).withOpacity(0.53),
                  borderRadius: BorderRadius.circular(100.w)),
              child: AutoSizeText(
                "Share",
                maxLines: 1,
                style: context.textTheme.bodySmall?.copyWith(color: Colors.white),
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
                barrierColor: Colors.transparent,
                context: context,
                isDismissible: true,
                showDragHandle: true,
                builder: (_) => Column(
                      children: [
                        Text(
                          "What would you like to do?",
                          style: context.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 9.08.w, horizontal: 3.47.w),
                          padding: EdgeInsets.symmetric(vertical: 2.78.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2.5.w),
                            border: Border.all(color: const Color(0xffD9D9D9), width: 1),
                          ),
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, RouteName.imagePreviewHomeScreen,
                                      arguments: imageCharacterModel);
                                },
                                child: Container(
                                  color: Colors.transparent,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 6.4.w,
                                      ),
                                      Image.asset(
                                        AppPathAsset.iconPhoneHome,
                                        height: 6.61.w,
                                      ),
                                      SizedBox(
                                        width: 3.38.w,
                                      ),
                                      const Text("Set on home screen")
                                    ],
                                  ),
                                ),
                              ),
                              Divider(
                                height: 5.56.w,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, RouteName.imagePreviewLockScreen,
                                      arguments: imageCharacterModel);
                                },
                                child: Container(
                                  color: Colors.transparent,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 6.4.w,
                                      ),
                                      Image.asset(
                                        AppPathAsset.iconPhoneLock,
                                        height: 6.61.w,
                                      ),
                                      SizedBox(
                                        width: 3.38.w,
                                      ),
                                      const Text("Set on lock screen")
                                    ],
                                  ),
                                ),
                              ),
                              Divider(
                                height: 5.56.w,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, RouteName.imagePreviewBothScreen,
                                      arguments: imageCharacterModel);
                                  // getIt<ImageCharacterBloc>()
                                  //     .add(OnClickSetBothScreen(imageCharacterModel, context));
                                },
                                child: Container(
                                  color: Colors.transparent,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 5.14.w,
                                      ),
                                      Image.asset(
                                        AppPathAsset.iconPhoneBoth,
                                        height: 6.61.w,
                                      ),
                                      SizedBox(
                                        width: 3.38.w,
                                      ),
                                      const Text("Set on both screen")
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const Expanded(child: SizedBox()),
                        SizedBox(
                          width: 70.w,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xff191E31)),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "Cancel",
                                style: context.textTheme.titleMedium
                                    ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                              )),
                        ),
                        SizedBox(
                          height: 1.w,
                        ),
                      ],
                    ));
          },
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(2.w),
                decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                child: Image.asset(
                  AppPathAsset.iconSet,
                  color: const Color(0xff29323B),
                  width: 7.w,
                  height: 7.w,
                ),
              ),
              SizedBox(
                height: 1.24.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 1.w, horizontal: 2.w),
                decoration: BoxDecoration(
                    color: const Color(0xff191E31).withOpacity(0.53),
                    borderRadius: BorderRadius.circular(100.w)),
                child: AutoSizeText(
                  "SET",
                  maxLines: 1,
                  style: context.textTheme.bodySmall?.copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        ValueListenableBuilder(
            valueListenable: FavoriteImageUseCase.box.listenable(),
            builder: (context, box, widget) {
              final bool checkFavorite = getIt<FavoriteImageBloc>()
                  .favoriteImageUseCase
                  .checkFavorite(imageCharacterModel.linkUrl ?? "");
              return GestureDetector(
                onTap: () {
                  !checkFavorite
                      ? getIt<FavoriteImageBloc>()
                          .add(OnAddFavoriteImage(imageCharacterModel.linkUrl ?? ""))
                      : getIt<FavoriteImageBloc>()
                          .add(OnRemoveFavoriteImage(imageCharacterModel.linkUrl ?? "", context));
                },
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(1.67.w),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color(0xff191E31).withOpacity(0.53),
                      ),
                      child: SizedBox(
                        height: 5.w,
                        child: checkFavorite
                            ? Image.asset(
                                AppPathAsset.iconHeartBold,
                                color: Colors.red,
                              )
                            : Image.asset(
                                AppPathAsset.iconHeart,
                                color: null,
                              ),
                      ),
                    ),
                    SizedBox(
                      height: 1.24.h,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 1.w, horizontal: 2.w),
                      decoration: BoxDecoration(
                          color: const Color(0xff191E31).withOpacity(0.53),
                          borderRadius: BorderRadius.circular(100.w)),
                      child: AutoSizeText(
                        "Favorite",
                        maxLines: 1,
                        style: context.textTheme.bodySmall?.copyWith(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              );
            }),
      ],
    );
  }
}
