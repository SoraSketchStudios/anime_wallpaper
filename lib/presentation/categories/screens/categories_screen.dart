import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:theme/image_export.dart';
import 'package:theme/theme.dart';

class CategoriesScreen extends StatelessWidget {
  final Function onCallback;
  CategoriesScreen({super.key, required this.onCallback});

  final List<String> listCategory = [
    "Fight Scenes",
    "Romantic Moments",
    "Epic Battles",
    "Comedic Moments",
    "Scenic Views",
    "School Life",
    "Fantasy Worlds",
    "Girl",
    "Game",
  ];

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (_) async {
        onCallback.call();
      },
      child: Scaffold(
        appBar: AppBar(
          leading: Row(children: [
            SizedBox(
              width: 5.14.w,
            ),
            GestureDetector(
              onTap: () {
                onCallback.call();
              },
              child: Image.asset(AppPathAsset.iconBack, width: 7.22.w, height: 7.22.w),
            ),
          ]),
          title: Text(
            "Category",
            style: context.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: GridView.count(
          childAspectRatio: 1.25,
          padding: EdgeInsets.all(7.64.w),
          crossAxisCount: 3,
          mainAxisSpacing: 3.6.w,
          crossAxisSpacing: 3.6.w,
          children: [
            ...listCategory
                .map((e) => Stack(
                      children: [
                        AspectRatio(
                          aspectRatio: 1.25,
                          child: Container(
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(colors: [
                                Color(0xff000000),
                                Color(0xff29323B),
                              ]),
                              borderRadius: BorderRadius.circular(2.8.w),
                            ),
                            child: CachedNetworkImage(
                              fit: BoxFit.fitHeight,
                              imageUrl:
                                  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
                            ),
                          ),
                        ),
                        Positioned(
                            top: 0,
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Opacity(
                              opacity: 0.5,
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(colors: [
                                    Color(0xff000000),
                                    Color(0xff29323B),
                                  ]),
                                  borderRadius: BorderRadius.circular(2.8.w),
                                ),
                              ),
                            )),
                        Positioned(
                            top: 0,
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Padding(
                              padding: EdgeInsets.all(1.w),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  e,
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  style: context.textTheme.titleMedium?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            )),
                      ],
                    ))
                .toList()
          ],
        ),
      ),
    );
  }
}
