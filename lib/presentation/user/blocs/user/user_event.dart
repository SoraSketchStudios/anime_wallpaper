part of 'user_bloc.dart';

@immutable
abstract class UserEvent {}

class OnSignOut extends UserEvent{
  final BuildContext context;

  OnSignOut(this.context);
}