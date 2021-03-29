import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'blog.g.dart';

@JsonSerializable()
class Blog {
  final String id;
  final String createdAt;
  final String title;
  final String imageUrl;

  Blog({
    @required this.id,
    @required this.createdAt,
    @required this.title,
    @required this.imageUrl,
  });

  factory Blog.fromJson(Map<String, dynamic> json) => _$BlogFromJson(json);

  Map<String, dynamic> toJson() => _$BlogToJson(this);
}
