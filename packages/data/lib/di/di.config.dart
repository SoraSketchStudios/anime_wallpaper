// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:domain/domain.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data.dart' as _i8;
import '../firebase_server/firebase_service/auth_service.dart' as _i3;
import '../firebase_server/firebase_service/history_word_service.dart' as _i4;
import '../firebase_server/firebase_service/word_service.dart' as _i9;
import '../firebase_server/repo_imp/auth_repo_imp.dart' as _i10;
import '../firebase_server/repo_imp/times_repo_imp.dart' as _i7;
import '../firebase_server/repo_imp/word_repo_imp.dart' as _i11;
import '../shared_preferences/shared_preference.dart' as _i5;

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
    gh.factory<_i3.AuthService>(() => _i3.AuthService());
    gh.factory<_i4.HistoryWordService>(() => _i4.HistoryWordService());
    gh.singleton<_i5.SharedPreferenceApp>(_i5.SharedPreferenceApp());
    gh.lazySingleton<_i6.TimesUseCase>(
        () => _i7.TimesRepoImp(gh<_i8.SharedPreferenceApp>()));
    gh.factory<_i9.WordService>(() => _i9.WordService());
    gh.factory<_i6.AuthRepo>(() => _i10.AuthRepoImp(gh<_i3.AuthService>()));
    gh.lazySingleton<_i6.WordRepo>(() => _i11.WordRepoImp(
          gh<_i9.WordService>(),
          gh<_i4.HistoryWordService>(),
        ));
    return this;
  }
}
