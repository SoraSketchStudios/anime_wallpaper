import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

class HomeSlideImageWidget extends StatelessWidget {
  HomeSlideImageWidget({super.key});
  final ValueNotifier<int> currentIndex = ValueNotifier(0);
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  late final List<Widget> imageSliders = imgList
      .map((item) => ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(AppSize.radius)),
          child: Stack(
            children: <Widget>[
              CachedNetworkImage(imageUrl: item, fit: BoxFit.cover, width: 1000.0),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color.fromARGB(200, 0, 0, 0), Color.fromARGB(0, 0, 0, 0)],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                ),
              ),
            ],
          )))
      .toList();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 1.925,
            enlargeCenterPage: true,
            viewportFraction: 1,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, a) {
              currentIndex.value = index;
            },
            autoPlay: true,
          ),
          items: [...imageSliders],
        ),
        SizedBox(
          height: 1.7.w,
        ),
        AnimatedBuilder(
          animation: currentIndex,
          builder: (_, __) => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                  imgList.length,
                  (index) => index != currentIndex.value
                      ? Container(
                          margin: EdgeInsets.only(right: 1.1.w),
                          width: 1.7.w,
                          height: 1.4.w,
                          decoration: BoxDecoration(
                              color: const Color(0xffE3E3E3), borderRadius: AppStyle.borderRadius),
                        )
                      : Container(
                          margin: EdgeInsets.only(right: 1.1.w),
                          width: 4.17.w,
                          height: 1.4.w,
                          decoration: BoxDecoration(
                              color: const Color(0xff989898), borderRadius: AppStyle.borderRadius),
                        )),
            ],
          ),
        )
      ],
    );
  }
}
