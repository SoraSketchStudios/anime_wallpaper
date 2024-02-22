import 'package:flutter/material.dart';
import 'package:frame_project/presentation/categories/screens/categories_screen.dart';
import 'package:frame_project/presentation/favorite/screens/favorite_screen.dart';
import 'package:frame_project/presentation/home/screens/home_screen.dart';
import 'package:frame_project/routes/route_names.dart';
import '../../setting/screens/setting_screen.dart';
import '../widgets/bottom_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBarHome(
          onCallBack: (index) {
            if (index == 3) {
              Navigator.pushNamed(context, RouteName.settingScreen);
            } else if (index == 2) {
              Navigator.pushNamed(context, RouteName.favoriteScreen);
            } else {
              setState(() {
                currentIndex = index;
              });
            }
          },
          select: currentIndex),
      body: IndexedStack(
        index: currentIndex,
        children: [
          HomeScreen(
            onViewAll: () {
              setState(() {
                currentIndex = 1;
              });
            },
          ),
          CategoriesScreen(
            onCallback: () {
              setState(() {
                currentIndex = 0;
              });
            },
          ),
          const FavoriteScreen(),
          const SettingScreen(),
        ],
      ),
    );
  }
}
