import 'package:bloc/bloc.dart';
import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:voca_memo/core/blocs/times/times_bloc.dart';
import 'package:widget/widget.dart';

part 'home_event.dart';
part 'home_state.dart';

@singleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final WordRepo wordRepo;
  HomeBloc(this.wordRepo) : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {});

    on<OnAddWord>((event, emit) async {
      EasyLoading.show();
      await wordRepo.addWord(event.word);
      getIt<TimesBloc>().add(OnIncreaseTimes());
      event.onCallback.call();
      EasyLoading.dismiss();
      await showDialog(
          context: event.context,
          builder: (_) => AlertDialog(
                title: Text("Them thanh cong"),
              ));
    });

    on<OnInitTimes>((event, emit) {});
  }
}
