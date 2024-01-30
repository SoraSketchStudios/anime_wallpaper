import 'dart:io';

import 'package:core/core.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme/theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:widget/widget.dart';

import 'core/blocs/times/times_bloc.dart';
import 'core/di/di.dart';
import 'firebase_options.dart';
import 'routes/route_manager.dart';
import 'routes/route_names.dart';

Future<void> main() async {
  HttpOverrides.global = MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  configureDependenciesApp();

  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    final String? uid = FirebaseAuth.instance.currentUser?.uid;
    return BlocProvider.value(
      value: getIt<TimesBloc>()..add(OnInit()),
      child: BlocBuilder<TimesBloc, TimesState>(
        builder: (context, state) {
          return MaterialApp(
            themeMode: ThemeMode.light,
            theme: appTheme,
            darkTheme: appThemeDark,
            onGenerateRoute: RouteManager.generateRoute,
            builder: EasyLoading.init(),
            initialRoute:
                uid != null ? RouteName.homeScreen : RouteName.authScreen,
          );
        },
      ),
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          ((X509Certificate cert, String host, int port) {
        final isValidHost =
            ["gpt.getdata.one"].contains(host); // <-- allow only hosts in array
        return isValidHost;
      });
  }
}
