import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_blog_app/authentication/domain/failures/api_service_failures.dart';
import 'package:flutter_blog_app/blogs/interface/blogs.dart';
import 'package:flutter_blog_app/blogs/models/blog.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:dartz/dartz.dart';

part 'blogs_event.dart';
part 'blogs_state.dart';

@injectable
class BlogsBloc extends Bloc<BlogsEvent, BlogsState> {
  final BlogInterface _blogInterface;

  BlogsBloc(this._blogInterface);
  @override
  BlogsState get initialState => BlogsInitial();

  @override
  Stream<BlogsState> mapEventToState(
    BlogsEvent event,
  ) async* {
    if (event is LoadBlogsList) {
      yield BlogsLoading();
      final Either<ApiServiceFailure, List<Blog>> blogListResponse =
          await _blogInterface.getBlogsList();
      yield BlogsLoaded(blogListResponse: blogListResponse);
    } else if (event is LoadBlogDetails) {
      yield BlogsLoading();
      final Either<ApiServiceFailure, Blog> blogDetailsResponse =
          await _blogInterface.getBlogDetails(event.id);
      yield BlogsDetailsLoaded(blogDetailsResponse: blogDetailsResponse);
    }
  }
}
