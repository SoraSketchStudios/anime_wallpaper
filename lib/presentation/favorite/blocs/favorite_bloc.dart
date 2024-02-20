import 'package:bloc/bloc.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'favorite_event.dart';
part 'favorite_state.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  FavoriteBloc() : super(const FavoriteInitial(null)) {
    on<FavoriteEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<OnGetFavoriteCharacter>((event, emit) {
      
    });

    on<OnClickItemFavoriteCharacter>((event, emit) {
      // TODO: implement event handler
    });
  }
}
