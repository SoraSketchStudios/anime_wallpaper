import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

class AppTextFieldWidget extends StatefulWidget {
  final TextEditingController? controller;
  final String? hintText;
  final FocusNode? focusNode;
  final TextStyle? style;
  final Function(String)? onChange;
  const AppTextFieldWidget(
      {super.key, this.controller, this.focusNode, this.hintText, this.style, this.onChange});

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
    return Container(
      // height: AppSize.buttonHeight,
      decoration:
          BoxDecoration(color: const Color(0xffF0F0F0), borderRadius: AppStyle.borderRadius),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.72.w, vertical: 0),
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                scrollPadding: EdgeInsets.zero,
                focusNode: node,
                onChanged: widget.onChange,
                maxLines: 1,
                controller: keyController,
                style: widget.style,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.zero,
                  hintText: widget.hintText ?? "Enter a your new word",
                ),
              ),
            ),
            Image.asset(
              AppPathAsset.iconSearch,
              width: 4.17.w,
              height: 4.17.w,
            ),
          ],
        ),
      ),
    );
  }
}
