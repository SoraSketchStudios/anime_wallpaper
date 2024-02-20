import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:frame_project/presentation/image_character/blocs/image_character/image_character_bloc.dart';

class ImageCharacterPhotoViewFooter extends StatelessWidget {
  final ImageCharacterModel imageCharacterModel;
  const ImageCharacterPhotoViewFooter({super.key, required this.imageCharacterModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        IconButton(
          onPressed: () {
            getIt<ImageCharacterBloc>().add(
              OnClickSetBackground(
                imageCharacterModel,
                context,
              ),
            );
          },
          icon: const Icon(
            Icons.home,
          ),
        )
      ],
    );
  }
}
