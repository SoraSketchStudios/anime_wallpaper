import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:frame_project/presentation/home/blocs/home/home_bloc.dart';
import 'package:frame_project/presentation/image_character/blocs/image_character/image_character_bloc.dart';
import 'package:frame_project/presentation/image_character/screens/image_character_screen.dart';
import 'package:frame_project/presentation/main/screens/main_screen.dart';
import 'package:frame_project/presentation/search/screens/search_screen.dart';
import 'package:frame_project/presentation/splash/screens/splash_screen.dart';
import 'package:widget/widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../presentation/image_character/screens/image_character_photo_view.dart';
import 'route_names.dart';

class RouteManager {
  static Widget widgetRoute(RouteSettings setting) {
    switch (setting.name) {
      case RouteName.searchScreen:
        return const SearchScreen();
      case RouteName.imageCharacterPhotoView:
        final data = setting.arguments as ImageCharacterModels;
        return BlocProvider.value(
          value: getIt<ImageCharacterBloc>(),
          child: ImageCharacterPhotoView(
            imageCharacterModels: data,
          ),
        );
      case RouteName.imageCharacterScreen:
        final data = setting.arguments as CharacterModel;
        return BlocProvider.value(
          value: getIt<ImageCharacterBloc>()..add(OnInitBlocImageCharacter(data)),
          child: ImageCharacterScreen(characterModel: data),
        );
      case RouteName.splashScreen:
        return const SplashScreen();
      case RouteName.mainScreen:
        return BlocProvider.value(
          value: getIt<HomeBloc>()..add(OnGetListCharacter()),
          child: const MainScreen(),
        );
      default:
        return Scaffold(
          body: AppErrorExistRouteWidget(
            name: setting.name ?? "",
          ),
        );
    }
  }

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => widgetRoute(settings));
  }
}
