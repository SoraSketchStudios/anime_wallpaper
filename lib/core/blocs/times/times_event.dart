part of 'times_bloc.dart';

@immutable
abstract class TimesEvent {}

class OnInit extends TimesEvent {}

class OnIncreaseTimes extends TimesEvent {}
