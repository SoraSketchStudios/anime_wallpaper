import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

class HomeCategoryWidget extends StatelessWidget {
  final Function onViewAll;
  HomeCategoryWidget({super.key, required this.onViewAll});

  final List<String> listCategoryShow = [
    "Fight Scenes",
    "Romantic Moments",
    "Epic Battles",
    "Comedic Moments"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Category",
              style: context.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            TextButton(
              child: const Text("View All"),
              onPressed: () {
                onViewAll.call();
              },
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: listCategoryShow
              .map((e) => Stack(
                    children: [
                      Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            Color(0xff000000),
                            Color(0xff29323B),
                          ]),
                          borderRadius: BorderRadius.circular(2.8.w),
                        ),
                        width: 19.17.w,
                        height: 15.5.w,
                        child: CachedNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl:
                              'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
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
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              e,
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              style: context.textTheme.labelLarge?.copyWith(color: Colors.white),
                            ),
                          )),
                    ],
                  ))
              .toList(),
        )
      ],
    );
  }
}
