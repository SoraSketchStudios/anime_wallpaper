part of 'favorite_image_bloc.dart';

@immutable
abstract class FavoriteImageState {
  final List<FavoriteImage> listFavoriteImage;

  const FavoriteImageState(this.listFavoriteImage);
}

class FavoriteCharacterInitial extends FavoriteImageState {
  const FavoriteCharacterInitial(super.listFavoriteImage);
}
