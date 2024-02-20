import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class AnimeGirlDoneWidget extends StatelessWidget {
  final List<CharacterModel> characterModel;
  const AnimeGirlDoneWidget({super.key, required this.characterModel});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: characterModel.length,
      itemBuilder: (context, index) => Container(
        child: Text(characterModel[index].name ?? ""),
      ),
    );
  }
}
