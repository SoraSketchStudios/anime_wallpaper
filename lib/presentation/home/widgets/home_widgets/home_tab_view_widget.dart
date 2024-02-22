import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:theme/theme.dart';
import 'package:widget/widget.dart';

import '../../modules/discovers/screens/discover_screen.dart';
import '../../modules/popular/screens/popular_screen.dart';
import '../../modules/recent/screens/recent_screen.dart';
import '../home_tab_widgets/home_tab_bar_item.dart';
import 'home_category_widget.dart';
import 'home_slide_image_widget.dart';

class HomeTabViewWidget extends StatefulWidget {
  final Function onViewAll;
  const HomeTabViewWidget({super.key, required this.onViewAll});

  @override
  State<HomeTabViewWidget> createState() => _HomeTabViewWidgetState();
}

class _HomeTabViewWidgetState extends State<HomeTabViewWidget> with TickerProviderStateMixin {
  ValueNotifier currentIndex = ValueNotifier(0);
  late final TabController _controller = TabController(length: 3, vsync: this);

  @override
  void initState() {
    _controller.addListener(() {
      currentIndex.value = _controller.index;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      controller: null,
      dragStartBehavior: DragStartBehavior.down,
      physics: const NeverScrollableScrollPhysics(),
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) => [
        SliverToBoxAdapter(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 4.5.w,
              ),
              HomeSlideImageWidget(),
              HomeCategoryWidget(
                onViewAll: () {
                  widget.onViewAll.call();
                },
              ),
              SizedBox(
                height: 2.w,
              ),
            ],
          ),
        ),
        SliverPersistentHeader(
          floating: true,
          delegate: _SliverAppBarDelegate(
            Container(
              color: context.colorScheme.background,
              child: Container(
                margin: EdgeInsets.only(top: 2.5.w),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color(0xffE1F4FF),
                  borderRadius: BorderRadius.circular(8.33.w),
                ),
                child: AnimatedBuilder(
                  animation: currentIndex,
                  builder: (_, __) => TabBar(
                    labelPadding: EdgeInsets.zero,
                    // indicatorPadding: EdgeInsets.zero,
                    padding: EdgeInsets.zero,
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    controller: _controller,
                    indicatorWeight: 0,
                    indicator: const UnderlineTabIndicator(borderSide: BorderSide.none),
                    dividerHeight: 0,
                    tabs: [
                      HomeTabBarItem(
                        title: "Trending",
                        pathIcon: AppPathAsset.iconTrend,
                        isSelect: currentIndex.value == 0,
                      ),
                      HomeTabBarItem(
                        title: "Recent",
                        pathIcon: AppPathAsset.iconRecent,
                        isSelect: currentIndex.value == 1,
                      ),
                      HomeTabBarItem(
                        title: "New",
                        pathIcon: AppPathAsset.iconNew,
                        isSelect: currentIndex.value == 2,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          pinned: true,
        ),
      ],
      body: TabBarView(
        controller: _controller,
        children: const [
          DiscoverScreen(),
          PopularScreen(),
          RecentScreen(),
        ],
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final Widget _tabBar;

  @override
  double get minExtent => 16.33.w;
  @override
  double get maxExtent => 16.33.w;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return _tabBar;
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
