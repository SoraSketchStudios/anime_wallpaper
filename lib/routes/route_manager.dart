import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:voca_memo/core/di/di.dart';
import 'package:voca_memo/presentation/auth/screens/auth_screen.dart';
import 'package:voca_memo/presentation/home/blocs/home_bloc.dart';
import 'package:voca_memo/presentation/home/screens/home_screen.dart';
import 'package:voca_memo/routes/route_names.dart';
import 'package:voca_memo/widgets/error_widgets/error_exist_route_widget.dart';

class RouteManager {
  static Route<dynamic>? generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case RouteName.homeScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (_) => getIt<HomeBloc>(),
            child: const HomeScreen(),
          ),
        );
      case RouteName.authScreen:
        return MaterialPageRoute(
          builder: (context) => const AuthScreen(),
        );
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
