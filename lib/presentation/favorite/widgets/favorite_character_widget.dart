import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frame_project/core/blocs/favorite_character/favorite_character_bloc.dart';
import 'package:frame_project/widgets/character_item_widget/character_item_widget.dart';
import 'package:theme/sizes/sizes.dart';

class FavoriteCharacterWidget extends StatelessWidget {
  const FavoriteCharacterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<FavoriteCharacterBloc>()..add(OnGetFavoriteCharacter()),
      child: Builder(builder: (context) {
        return BlocBuilder<FavoriteCharacterBloc, FavoriteCharacterState>(
          builder: (context, state) {
            return GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 0.6,
              padding: EdgeInsets.all(AppSize.paddingS),
              crossAxisSpacing: AppSize.paddingS,
              mainAxisSpacing: AppSize.paddingS,
              children: [
                ...state.listFavorite.map(
                  (e) => CharacterItemWidget(
                    characterModel: e.characterModel ?? const CharacterModel(),
                  ),
                )
              ],
            );
          },
        );
      }),
    );
  }
}
