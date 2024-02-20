import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:core/core.dart';
import 'package:meta/meta.dart';

part 'item_character_event.dart';
part 'item_character_state.dart';

@injectable
class ItemCharacterBloc extends Bloc<ItemCharacterEvent, ItemCharacterState> {
  ItemCharacterBloc() : super(ItemCharacterInitial()) {
    on<ItemCharacterEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
