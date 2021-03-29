part of 'blogs_bloc.dart';

@immutable
abstract class BlogsState {}

class BlogsInitial extends BlogsState {}

class BlogsLoading extends BlogsState {}

class BlogsLoaded extends BlogsState {
  final Either<ApiServiceFailure, List<Blog>> blogListResponse;

  BlogsLoaded({this.blogListResponse});
}

class BlogsDetailsLoaded extends BlogsState {
  final Either<ApiServiceFailure, Blog> blogDetailsResponse;

  BlogsDetailsLoaded({this.blogDetailsResponse});
}
