import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frame_project/presentation/home/blocs/home/home_bloc.dart';
import 'package:frame_project/routes/route_names.dart';
import 'package:theme/image_export.dart';
import 'package:theme/sizes/sizes.dart';
import 'package:theme/theme.dart';
import 'package:widget/text_field/text_field_widgets.dart';

class HomeSearchWidget extends StatefulWidget {
  const HomeSearchWidget({super.key});

  @override
  State<HomeSearchWidget> createState() => _HomeSearchWidgetState();
}

class _HomeSearchWidgetState extends State<HomeSearchWidget> {
  final keyText = GlobalKey<AppTextFieldWidgetState>();
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
  }

  _onSearchChanged(String query, BuildContext context) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 1000), () {
      context.read<HomeBloc>().add(OnSearchCharacter(keyText.currentState?.controller.text ?? ""));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, RouteName.searchScreen);
            },
            child: IgnorePointer(
              child: AppTextFieldWidget(
                onChange: (string) {
                  _onSearchChanged(string, context);
                },
                key: keyText,
                hintText: "Find Wallpaper by character name..",
              ),
            ),
          ),
        ),
        SizedBox(
          width: 1.4.w,
        ),
        SizedBox(
          width: 7.64.w,
          height: 7.64.w,
          child: Image.asset(AppPathAsset.iconNotification),
        )
      ],
    );
  }
}
