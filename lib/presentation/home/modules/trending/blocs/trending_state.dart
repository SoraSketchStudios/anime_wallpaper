part of 'trending_bloc.dart';

@immutable
abstract class TrendingState {
  final List<ImageModel>? images;

  const TrendingState(this.images);
}

class TrendingInitial extends TrendingState {
  const TrendingInitial(super.images);
}

class TrendingLoading extends TrendingState {
  const TrendingLoading(super.images);
}

class TrendingDone extends TrendingState {
  const TrendingDone(super.images);
}

class TrendingError extends TrendingState {
  const TrendingError(super.images);
}
