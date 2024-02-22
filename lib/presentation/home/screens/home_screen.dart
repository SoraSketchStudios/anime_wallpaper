import 'package:flutter/material.dart';
import 'package:theme/theme.dart';
import '../widgets/home_widgets/home_search_widget.dart';
import '../widgets/home_widgets/home_tab_view_widget.dart';

class HomeScreen extends StatefulWidget {
  final Function onViewAll;
  const HomeScreen({super.key, required this.onViewAll});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.7.w),
        child: Column(
          children: [
            const HomeSearchWidget(),
            Expanded(
              child: HomeTabViewWidget(
                onViewAll: () {
                  widget.onViewAll.call();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
