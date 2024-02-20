import 'package:flutter/material.dart';
import 'package:widget/widget.dart';
import '../modules/anime_girl/screens/anime_girl_screen.dart';
import '../modules/discovers/screens/discover_screen.dart';
import '../modules/popular/screens/pupolar_screen.dart';
import '../modules/recent/screens/recent_screen.dart';
import '../widgets/home_widgets/home_search_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          HomeSearchWidget(),
          Expanded(
            child: DefaultTabController(
              length: 4,
              child: Column(
                children: [
                  TabBar(
                    tabs: [
                      AutoSizeText("Discover"),
                      AutoSizeText("Popular"),
                      AutoSizeText("Recent"),
                      AutoSizeText(
                        "Anime Girls",
                        maxLines: 1,
                      )
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        DiscoverScreen(),
                        PopularScreen(),
                        RecentScreen(),
                        AnimeGirlScreen(),
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
