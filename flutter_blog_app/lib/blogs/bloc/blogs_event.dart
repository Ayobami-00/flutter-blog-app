part of 'blogs_bloc.dart';

@immutable
abstract class BlogsEvent {}

class LoadBlogsList extends BlogsEvent {}

class LoadBlogDetails extends BlogsEvent {
  final String id;

  LoadBlogDetails({@required this.id});
}
