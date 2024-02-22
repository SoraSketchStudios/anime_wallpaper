import 'package:flutter/material.dart';
import 'package:theme/theme.dart';
import 'package:widget/widget.dart';

class BottomBarHome extends StatelessWidget {
  final int select;
  final Function(int) onCallBack;
  BottomBarHome({Key? key, required this.select, required this.onCallBack}) : super(key: key);

  final List<dynamic> listOfIcons = [
    AppPathAsset.iconHome,
    AppPathAsset.iconCategory,
    AppPathAsset.iconHeartBold,
    AppPathAsset.iconSetting,
  ];

  List<String> listOfStrings(BuildContext context) => [
        "Home",
        "Category",
        "Favorite",
        "Setting",
      ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.77.w, vertical: 3.33.w),
      width: MediaQuery.of(context).size.width,
      height: 18.89.w,
      decoration: BoxDecoration(
        color: context.colorScheme.background,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...List.generate(
            4,
            (index) => InkWell(
              onTap: () {
                onCallBack(index);
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Stack(
                children: [
                  AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    width: index == select ? 32.w : 6.23.w,
                    height: 12.08.w,
                    alignment: Alignment.center,
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                      height: index == select ? MediaQuery.of(context).size.width * .12 : 0,
                      width: index == select ? MediaQuery.of(context).size.width * .39 : 0,
                      decoration: BoxDecoration(
                        color: index == select ? context.colorScheme.surface : Colors.transparent,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    width: index == select ? 32.w : 6.23.w,
                    height: 12.08.w,
                    padding: index == select
                        ? EdgeInsets.symmetric(vertical: 2.5.w, horizontal: 2.9.w)
                        : null,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60.w),
                      color: index == select ? const Color(0xffF0F0F0) : null,
                    ),
                    alignment: Alignment.center,
                    child: Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            AnimatedContainer(
                              duration: const Duration(seconds: 1),
                              curve: Curves.fastLinearToSlowEaseIn,
                              width: index == select ? 9.15.w : 0,
                            ),
                            Expanded(
                              child: AnimatedOpacity(
                                opacity: index == select ? 1 : 0,
                                duration: const Duration(seconds: 1),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child: AutoSizeText(
                                    index == select ? listOfStrings(context)[index] : '',
                                    maxLines: 1,
                                    style: context.textTheme.bodyMedium
                                        ?.copyWith(color: const Color(0xff292D32))),
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          top: 0,
                          bottom: 0,
                          child: Image.asset(
                            listOfIcons[index],
                            width: 6.25.w,
                            color: !(index == select)
                                ? const Color(0xffA8A8A8)
                                : const Color(0xff292D32),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
