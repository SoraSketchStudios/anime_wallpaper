import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frame_project/core/blocs/favorite_character/favorite_character_bloc.dart';
import 'package:frame_project/routes/route_manager.dart';
import 'package:frame_project/routes/route_names.dart';
import 'package:frame_project/widgets/character_item_widget/character_item_widget.dart';
import 'package:theme/sizes/sizes.dart';
import 'package:widget/image_builder/image_builder_widget.dart';

import '../../../core/blocs/favorite_image/favorite_image_bloc.dart';
import '../../image_character/screens/image_character_photo_view.dart';
import '../../image_character/widgets/image_character_widgets/image_character_item_widget.dart';

class FavoriteImageWidget extends StatelessWidget {
  const FavoriteImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<FavoriteImageBloc>()..add(OnGetFavoriteImage()),
      child: Builder(builder: (context) {
        return BlocBuilder<FavoriteImageBloc, FavoriteImageState>(
          builder: (context, state) {
            return GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 0.6,
              padding: EdgeInsets.all(AppSize.paddingS),
              crossAxisSpacing: AppSize.paddingS,
              mainAxisSpacing: AppSize.paddingS,
              children: [
                ...List.generate(
                    state.listFavoriteImage.length,
                    (index) => ImageCharacterItemWidget(
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
