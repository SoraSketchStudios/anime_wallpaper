import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:voca_memo/core/di/di.dart';
import 'package:voca_memo/presentation/auth/screens/auth_screen.dart';
import 'package:voca_memo/presentation/home/blocs/home_bloc.dart';
import 'package:voca_memo/presentation/home/screens/home_screen.dart';
import 'package:voca_memo/presentation/user/blocs/user/user_bloc.dart';
import 'package:voca_memo/presentation/user/screens/user_screen.dart';
import 'package:voca_memo/presentation/words/blocs/words/words_bloc.dart';
import 'package:voca_memo/presentation/words/screens/words_screen.dart';
import 'package:voca_memo/routes/route_names.dart';
import 'package:widget/widget.dart';

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
      case RouteName.userScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: getIt<UserBloc>(),
            child: const UserScreen(),
          ),
        );
      case RouteName.wordsScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: getIt<WordsBloc>()..add(OnGetWords()),
            child: const WordsScreen(),
          ),
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
