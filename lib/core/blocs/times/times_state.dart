part of 'times_bloc.dart';

@immutable
abstract class TimesState {
  final int times;

  const TimesState(this.times);
}

class TimesInitial extends TimesState {
  const TimesInitial(super.times);
}
