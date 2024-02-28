import 'package:flutter/material.dart';
import 'package:frame_project/widgets/app_bar_widget/app_bar_widget.dart';

class TermOfUseScreen extends StatelessWidget {
  const TermOfUseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context: context, title: "Term & Conditions"),
    );
  }
}
