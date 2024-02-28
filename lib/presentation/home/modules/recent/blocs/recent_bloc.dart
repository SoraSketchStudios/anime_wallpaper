import 'package:bloc/bloc.dart';
import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'recent_event.dart';
part 'recent_state.dart';

@lazySingleton
class RecentBloc extends Bloc<RecentEvent, RecentState> {
  final ImageUseCase imageUseCase;
  RecentBloc(this.imageUseCase) : super(const RecentInitial(null)) {
    on<OnGetRecentImage>((event, emit) async {
      emit(const RecentLoading(null));
      try {
        final images = await imageUseCase.getRecentImage();
        emit(RecentDone(images));
      } catch (e) {
        emit(const RecentError(null));
      }
    });

    on<OnClickItemRecentImage>((event, emit) {
      // TODO: implement event handler
    });
  }
}
