import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frame_project/presentation/image_character/blocs/image_character/image_character_bloc.dart';
import 'package:widget/loading/loading_widget.dart';

class ImageCharacterLoadingWidget extends StatelessWidget {
  const ImageCharacterLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: RefreshIndicator(
            onRefresh: () async {
              context.read<ImageCharacterBloc>().add(OnReloadImageCharacter());
            },
            child: SingleChildScrollView(child: Container()),
          ),
        ),
        const Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Center(
              child: AppLoadingWidget(),
            )),
      ],
    );
  }
}
