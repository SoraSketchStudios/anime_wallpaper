import 'package:bloc/bloc.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../routes/route_names.dart';

part 'auth_event.dart';
part 'auth_state.dart';

@lazySingleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepo authRepo;
  AuthBloc(this.authRepo) : super(AuthInitial()) {
    on<AuthEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<OnSignInWithGoogle>((event, emit) async {
      await authRepo.signInWithGoogle();
      Navigator.pushNamed(event.context, RouteName.homeScreen);
    });

  }
}
