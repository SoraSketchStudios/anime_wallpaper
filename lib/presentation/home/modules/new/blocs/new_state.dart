part of 'new_bloc.dart';

@immutable
abstract class NewState {
  final List<ImageModel>? images;

  const NewState(this.images);
}

class NewInitial extends NewState {
  const NewInitial(super.images);
}

class NewLoading extends NewState {
  const NewLoading(super.images);
}

class NewDone extends NewState {
  const NewDone(super.images);
}

class NewError extends NewState {
  const NewError(super.images);
}
