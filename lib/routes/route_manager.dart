import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:frame_project/presentation/categories/screens/categories_screen.dart';
import 'package:frame_project/presentation/favorite/screens/favorite_screen.dart';
import 'package:frame_project/presentation/home/blocs/home/home_bloc.dart';
import 'package:frame_project/presentation/image_character/blocs/image_character/image_character_bloc.dart';
import 'package:frame_project/presentation/image_character/screens/image_preview_both_screen.dart';
import 'package:frame_project/presentation/image_character/screens/image_preview_home_screen.dart';
import 'package:frame_project/presentation/image_character/screens/image_preview_lock_screen.dart';
import 'package:frame_project/presentation/intro/screens/intro_screen.dart';
import 'package:frame_project/presentation/main/screens/main_screen.dart';
import 'package:frame_project/presentation/privacy/screens/privacy_screen.dart';
import 'package:frame_project/presentation/search/screens/search_screen.dart';
import 'package:frame_project/presentation/setting/screens/setting_screen.dart';
import 'package:frame_project/presentation/splash/screens/splash_screen.dart';
import 'package:frame_project/presentation/term_of_use/screens/term_of_use.dart';
import 'package:widget/widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../presentation/image_character/screens/image_character_photo_view.dart';
import 'route_names.dart';

class RouteManager {
  static Widget widgetRoute(RouteSettings setting) {
    switch (setting.name) {
      case RouteName.introScreen:
        return const IntroScreen();
      case RouteName.privacyScreen:
        return const PrivacyScreen();
      case RouteName.termOfUseScreen:
        return const TermOfUseScreen();
      case RouteName.favoriteScreen:
        return const FavoriteScreen();
      case RouteName.settingScreen:
        return const SettingScreen();
      case RouteName.imagePreviewBothScreen:
        final data = setting.arguments as ImageModel;
        return BlocProvider.value(
            value: getIt<ImageCharacterBloc>(),
            child: ImagePreviewBothScreen(imageCharacterModel: data));
      case RouteName.imagePreviewHomeScreen:
        final data = setting.arguments as ImageModel;
        return BlocProvider.value(
            value: getIt<ImageCharacterBloc>(),
            child: ImagePreviewHomeScreen(imageCharacterModel: data));
      case RouteName.imagePreviewLockScreen:
        final data = setting.arguments as ImageModel;
        return BlocProvider.value(
            value: getIt<ImageCharacterBloc>(),
            child: ImagePreviewLockScreen(imageCharacterModel: data));
      case RouteName.imageCharacterPhotoView:
        final data = setting.arguments as ImageCharacterModels;
        return BlocProvider.value(
          value: getIt<ImageCharacterBloc>(),
          child: ImageCharacterPhotoView(
            imageCharacterModels: data,
          ),
        );
      case RouteName.splashScreen:
        return const SplashScreen();
      case RouteName.mainScreen:
        return BlocProvider.value(
          value: getIt<HomeBloc>(),
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
