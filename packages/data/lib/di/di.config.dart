// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:domain/domain.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../service_server/repo_imp/openAI_repo_imp.dart' as _i6;
import '../service_server/repo_imp/tracau_repo_imp.dart' as _i10;
import '../shared_preferences/shared_preference.dart' as _i7;

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
    gh.factory<_i5.OpenAIRepo>(() => _i6.OpenAiRepoImp());
    gh.singleton<_i7.SharedPreferenceApp>(_i7.SharedPreferenceApp());
    gh.factory<_i5.TraCauRepo>(() => _i10.TraCauRepoImp());
    return this;
  }
}
