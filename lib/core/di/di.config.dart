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

import '../../presentation/home/blocs/home/home_bloc.dart' as _i8;
import '../../presentation/home/blocs/item_character/item_character_bloc.dart'
    as _i10;
import '../../presentation/home/modules/anime_girl/blocs/anime_girl_bloc.dart'
    as _i3;
import '../../presentation/home/modules/discovers/blocs/discover_bloc.dart'
    as _i5;
import '../../presentation/home/modules/popular/blocs/popular_bloc.dart'
    as _i11;
import '../../presentation/home/modules/recent/blocs/recent_bloc.dart' as _i12;
import '../../presentation/image_character/blocs/image_character/image_character_bloc.dart'
    as _i9;
import '../blocs/favorite_character/favorite_character_bloc.dart' as _i6;
import '../blocs/favorite_image/favorite_image_bloc.dart' as _i7;

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
    gh.lazySingleton<_i5.DiscoverBloc>(
        () => _i5.DiscoverBloc(gh<_i4.CharacterRepo>()));
    gh.singleton<_i6.FavoriteCharacterBloc>(
        _i6.FavoriteCharacterBloc(gh<_i4.FavoriteCharacterUseCase>()));
    gh.singleton<_i7.FavoriteImageBloc>(
        _i7.FavoriteImageBloc(gh<_i4.FavoriteImageUseCase>()));
    gh.lazySingleton<_i8.HomeBloc>(() => _i8.HomeBloc(gh<_i4.CharacterRepo>()));
    gh.lazySingleton<_i9.ImageCharacterBloc>(
        () => _i9.ImageCharacterBloc(gh<_i4.CharacterRepo>()));
    gh.factory<_i10.ItemCharacterBloc>(() => _i10.ItemCharacterBloc());
    gh.lazySingleton<_i11.PopularBloc>(
        () => _i11.PopularBloc(gh<_i4.CharacterRepo>()));
    gh.lazySingleton<_i12.RecentBloc>(
        () => _i12.RecentBloc(gh<_i4.CharacterRepo>()));
    return this;
  }
}
