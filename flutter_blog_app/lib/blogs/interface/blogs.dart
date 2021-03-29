import 'package:dartz/dartz.dart';
import 'package:flutter_blog_app/authentication/domain/failures/api_service_failures.dart';
import 'package:flutter_blog_app/blogs/models/blog.dart';

abstract class BlogInterface {
  Future<Either<ApiServiceFailure, List<Blog>>> getBlogsList();
}
