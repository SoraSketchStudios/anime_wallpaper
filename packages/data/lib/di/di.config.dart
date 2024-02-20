// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:core/core.dart' as _i5;
import 'package:domain/domain.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../hive_server/controller_imp/favorite_character_controller_imp.dart'
    as _i6;
import '../hive_server/controller_imp/favorite_image_controller_imp.dart'
    as _i7;
import '../service_server/repo_imp/character_repo_imp.dart' as _i4;
import '../shared_preferences/shared_preference.dart' as _i8;

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
    gh.factory<_i3.CharacterRepo>(
        () => _i4.CharacterRepoImp(gh<_i5.DioInfo>()));
    gh.factory<_i3.FavoriteCharacterUseCase>(
        () => _i6.FavoriteCharacterControllerImp());
    gh.factory<_i3.FavoriteImageUseCase>(
        () => _i7.FavoriteImageControllerImp());
    gh.singleton<_i8.SharedPreferenceApp>(_i8.SharedPreferenceApp());
    return this;
  }
}
