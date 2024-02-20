import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frame_project/presentation/image_character/blocs/image_character/image_character_bloc.dart';
import 'package:frame_project/presentation/image_character/widgets/image_character_widgets/image_character_done_widget.dart';
import 'package:frame_project/presentation/image_character/widgets/image_character_widgets/image_character_error_widget.dart';

import '../widgets/image_character_widgets/image_character_loading_widget.dart';

class ImageCharacterScreen extends StatelessWidget {
  final CharacterModel characterModel;

  const ImageCharacterScreen({super.key, required this.characterModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<ImageCharacterBloc, ImageCharacterState>(
        builder: (context, state) {
          late final Widget widgetShow;
          if (state is ImageCharacterLoading) {
            widgetShow = const ImageCharacterLoadingWidget();
          } else if (state is ImageCharacterError) {
            widgetShow = const ImageCharacterErrorWidget();
          } else if (state is ImageCharacterDone) {
            widgetShow = ImageCharacterDoneWidget(
              imageCharacterModels: state.imageCharacterModels ?? [],
            );
          }
          return widgetShow;
        },
      ),
    );
  }
}
