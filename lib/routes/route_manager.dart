import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widget/widget.dart';
import 'route_names.dart';

class RouteManager {
  static Route<dynamic>? generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case RouteName.wordsRandomCardWordsScreen:

      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: AppErrorExistRouteWidget(
              name: "route",
            ),
          ),
        );
    }
  }
}
