import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

import '../../../../routes/route_names.dart';

part 'user_event.dart';
part 'user_state.dart';

@lazySingleton
class UserBloc extends Bloc<UserEvent, UserState> {
  final AuthRepo authRepo;
  UserBloc(this.authRepo) : super(UserInitial()) {
    on<UserEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<OnSignOut>((event, emit) async {
      await authRepo.signOut();
      Navigator.pushNamedAndRemoveUntil(
          event.context, RouteName.authScreen, (_) => false);
    });
  }
}
