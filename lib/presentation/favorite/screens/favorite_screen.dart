import 'package:flutter/material.dart';
import 'package:frame_project/presentation/favorite/widgets/favorite_image_widget.dart';

import '../widgets/favorite_character_widget.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Column(
          children: [
            TabBar(
              tabs: [
                Tab(
                  text: "Character",
                ),
                Tab(
                  text: "Image",
                )
              ],
            ),
            Expanded(
                child: TabBarView(
              children: [
                FavoriteCharacterWidget(),
                FavoriteImageWidget(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
