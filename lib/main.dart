import 'dart:ffi';
import 'dart:io';
import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frame_project/core/blocs/favorite_character/favorite_character_bloc.dart';
import 'package:theme/theme.dart';
import 'package:widget/widget.dart';

import 'core/blocs/favorite_image/favorite_image_bloc.dart';
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

  /// config DI
  configureDependenciesApp();

  /// config Hive
  await registerAdapter();
  await opeHive();

  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<FavoriteCharacterBloc>(),
      child: BlocProvider.value(
        value: getIt<FavoriteImageBloc>(),
        child: MaterialApp(
          themeMode: ThemeMode.dark,
          theme: appTheme,
          darkTheme: appThemeDark,
          onGenerateRoute: RouteManager.generateRoute,
          builder: EasyLoading.init(),
          initialRoute: RouteName.splashScreen,
        ),
      ),
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = ((X509Certificate cert, String host, int port) {
        final isValidHost = ["gpt.getdata.one"].contains(host);
        return isValidHost;
      });
  }
}
