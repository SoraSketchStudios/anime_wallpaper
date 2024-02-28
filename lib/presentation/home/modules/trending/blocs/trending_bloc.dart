import 'package:bloc/bloc.dart';
import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'trending_event.dart';
part 'trending_state.dart';

@lazySingleton
class TrendingBloc extends Bloc<TrendingEvent, TrendingState> {
  final ImageUseCase imageUseCase;
  TrendingBloc(this.imageUseCase) : super(const TrendingInitial(null)) {
    on<OnGetTrendingImage>((event, emit) async {
      emit(const TrendingLoading(null));
      try {
        final images = await imageUseCase.getTrendingImage();
        emit(TrendingDone(images));
      } catch (e) {
        emit(const TrendingError(null));
      }
    });

    on<OnClickItemTrendImage>((event, emit) {
      // TODO: implement event handler
    });
  }
}
