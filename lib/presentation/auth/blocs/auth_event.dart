part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class OnSignInWithGoogle extends AuthEvent {
  final BuildContext context;

  OnSignInWithGoogle(this.context);
}

class OnSignOut extends AuthEvent {
  final BuildContext context;
  OnSignOut(this.context);
}
