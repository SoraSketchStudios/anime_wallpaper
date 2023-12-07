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

import '../../presentation/auth/blocs/auth_bloc.dart' as _i3;
import '../../presentation/home/blocs/home_bloc.dart' as _i5;
import '../../presentation/user/blocs/user/user_bloc.dart' as _i7;
import '../../presentation/words/blocs/words/words_bloc.dart' as _i8;
import '../blocs/times/times_bloc.dart' as _i6;

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
    gh.lazySingleton<_i3.AuthBloc>(() => _i3.AuthBloc(gh<_i4.AuthRepo>()));
    gh.singleton<_i5.HomeBloc>(_i5.HomeBloc(gh<_i4.WordRepo>()));
    gh.lazySingleton<_i6.TimesBloc>(
        () => _i6.TimesBloc(gh<_i4.TimesUseCase>()));
    gh.lazySingleton<_i7.UserBloc>(() => _i7.UserBloc(gh<_i4.AuthRepo>()));
    gh.lazySingleton<_i8.WordsBloc>(() => _i8.WordsBloc(gh<_i4.WordRepo>()));
    return this;
  }
}
