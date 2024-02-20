import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class PopularDoneWidget extends StatelessWidget {
  final List<CharacterModel> characterModels;
  const PopularDoneWidget({super.key, required this.characterModels});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: characterModels.length,
      itemBuilder: (context, index) => Container(
        child: Text(characterModels[index].name ?? ""),
      ),
    );
  }
}
