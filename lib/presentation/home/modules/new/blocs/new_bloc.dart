import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'new_event.dart';
part 'new_state.dart';

@lazySingleton
class NewBloc extends Bloc<NewEvent, NewState> {
  final ImageUseCase imageUseCase;
  NewBloc(this.imageUseCase) : super(const NewInitial(null)) {
    on<OnGetNewImage>((event, emit) async {
      emit(const NewLoading(null));
      try {
        final images = await imageUseCase.getNewImage();
        emit(NewDone(images));
      } catch (e) {
        emit(const NewError(null));
      }
    });

    on<OnClickItemNewImage>((event, emit) {
      // TODO: implement event handler
    });
  }
}
