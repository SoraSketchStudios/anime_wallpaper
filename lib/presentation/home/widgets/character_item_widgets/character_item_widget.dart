import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:frame_project/presentation/home/blocs/home/home_bloc.dart';
import 'package:theme/sizes/sizes.dart';
import 'package:theme/styles/styles.dart';
import 'package:theme/theme_extension.dart';
import 'package:widget/image_builder/image_builder_widget.dart';

class CharacterItemWidget extends StatelessWidget {
  final double height;
  final CharacterModel characterModel;
  const CharacterItemWidget({super.key, required this.characterModel, required this.height});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        getIt<HomeBloc>().add(OnClickItemCharacter(characterModel, context));
      },
      child: Stack(
        children: [
          Container(
            height: height,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              borderRadius: AppStyle.borderRadius,
            ),
            child: AppImageBuilderWidget(linkImage: characterModel.linkURL ?? ""),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: AppStyle.borderRadius,
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0),
                    Colors.black.withOpacity(0.5),
                    // Colors.black.withOpacity(),
                  ],
                  end: Alignment.bottomCenter,
                  begin: Alignment.topCenter,
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(AppSize.padding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    characterModel.name ?? "",
                    style: context.textTheme.titleMedium,
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
