import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frame_project/core/blocs/favorite_character/favorite_character_bloc.dart';
import 'package:frame_project/routes/route_manager.dart';
import 'package:theme/sizes/sizes.dart';

import '../../../core/blocs/favorite_image/favorite_image_bloc.dart';
import '../../../widgets/image_show_item_widget/image_show_item_widget.dart';

class FavoriteImageWidget extends StatelessWidget {
  const FavoriteImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<FavoriteImageBloc>()..add(OnGetFavoriteImage()),
      child: Builder(builder: (context) {
        return BlocBuilder<FavoriteImageBloc, FavoriteImageState>(
          builder: (context, state) {
            if (state.listFavoriteImage.isEmpty) {
              return const Center(
                child: Text("No favorite found"),
              );
            }
            return GridView.count(
              crossAxisCount: 3,
              childAspectRatio: 0.57,
              padding: EdgeInsets.all(AppSize.paddingS),
              crossAxisSpacing: AppSize.paddingS,
              mainAxisSpacing: AppSize.paddingS,
              children: [
                ...List.generate(
                    state.listFavoriteImage.length,
                    (index) => ImageShowItemWidget(
                          imageCharacterModels: [
                            ...state.listFavoriteImage
                                .map((e) => ImageCharacterModel(linkUrl: e.linkImage))
                          ],
                          index: index,
                        ))
              ],
            );
          },
        );
      }),
    );
  }
}
