import 'package:flutter/material.dart';

class AppTextFieldWidget extends StatefulWidget {
  final TextEditingController? controller;
  final String? hintText;
  final FocusNode? focusNode;
  const AppTextFieldWidget(
      {super.key, this.controller, this.focusNode, this.hintText});

  @override
  State<AppTextFieldWidget> createState() => AppTextFieldWidgetState();
}

class AppTextFieldWidgetState extends State<AppTextFieldWidget> {
  late final TextEditingController keyController;
  late final FocusNode node;
  TextEditingController get controller => keyController;
  FocusNode get focusNode => node;

  @override
  void initState() {
    keyController = widget.controller ?? TextEditingController();
    node = widget.focusNode ?? FocusNode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          textAlign: TextAlign.center,
          scrollPadding: EdgeInsets.zero,
          focusNode: node,
          maxLines: 1,
          controller: keyController,
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(fontWeight: FontWeight.bold, letterSpacing: 3),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.zero,
            hintText: widget.hintText ?? "Enter a your new word",
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 2,
          color: Theme.of(context).colorScheme.primary,
        )
      ],
    );
  }
}
