// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:domain/domain.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../presentation/home/blocs/home/home_bloc.dart' as _i7;
import '../../presentation/home/blocs/item_character/item_character_bloc.dart'
    as _i9;
import '../../presentation/home/modules/anime_girl/blocs/anime_girl_bloc.dart'
    as _i3;
import '../../presentation/home/modules/new/blocs/new_bloc.dart' as _i10;
import '../../presentation/home/modules/recent/blocs/recent_bloc.dart' as _i11;
import '../../presentation/home/modules/trending/blocs/trending_bloc.dart'
    as _i14;
import '../../presentation/image_character/blocs/image_character/image_character_bloc.dart'
    as _i8;
import '../../presentation/search/blocs/search_bloc.dart' as _i12;
import '../../shared_preferences/shared_preferences.dart' as _i13;
import '../blocs/favorite_character/favorite_character_bloc.dart' as _i5;
import '../blocs/favorite_image/favorite_image_bloc.dart' as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.AnimeGirlBloc>(
        () => _i3.AnimeGirlBloc(gh<_i4.CharacterRepo>()));
    gh.singleton<_i5.FavoriteCharacterBloc>(
        _i5.FavoriteCharacterBloc(gh<_i4.FavoriteCharacterUseCase>()));
    gh.singleton<_i6.FavoriteImageBloc>(
        _i6.FavoriteImageBloc(gh<_i4.FavoriteImageUseCase>()));
    gh.lazySingleton<_i7.HomeBloc>(() => _i7.HomeBloc(gh<_i4.CharacterRepo>()));
    gh.lazySingleton<_i8.ImageCharacterBloc>(() => _i8.ImageCharacterBloc(
          gh<_i4.CharacterRepo>(),
          gh<_i4.ImageUseCase>(),
        ));
    gh.factory<_i9.ItemCharacterBloc>(() => _i9.ItemCharacterBloc());
    gh.lazySingleton<_i10.NewBloc>(() => _i10.NewBloc(gh<_i4.ImageUseCase>()));
    gh.lazySingleton<_i11.RecentBloc>(
        () => _i11.RecentBloc(gh<_i4.ImageUseCase>()));
    gh.lazySingleton<_i12.SearchBloc>(
        () => _i12.SearchBloc(gh<_i4.ImageUseCase>()));
    gh.lazySingleton<_i13.SharePreferenceController>(
        () => _i13.SharePreferenceController());
    gh.lazySingleton<_i14.TrendingBloc>(
        () => _i14.TrendingBloc(gh<_i4.ImageUseCase>()));
    return this;
  }
}
