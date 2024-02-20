part of 'favorite_image_bloc.dart';

@immutable
abstract class FavoriteImageEvent {}

class OnGetFavoriteImage extends FavoriteImageEvent {}

class OnAddFavoriteImage extends FavoriteImageEvent {
  final String linkImage;

  OnAddFavoriteImage(this.linkImage);
}

class OnRemoveFavoriteImage extends FavoriteImageEvent {
  final String linkImage;
  final BuildContext context;
  OnRemoveFavoriteImage(this.linkImage, this.context);
}

class OnDeleteAllFavoriteImage extends FavoriteImageEvent {}
