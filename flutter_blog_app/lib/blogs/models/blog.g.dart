// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Blog _$BlogFromJson(Map<String, dynamic> json) {
  return Blog(
    id: json['id'] as String,
    createdAt: json['createdAt'] as String,
    title: json['title'] as String,
    imageUrl: json['imageUrl'] as String,
  );
}

Map<String, dynamic> _$BlogToJson(Blog instance) => <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'title': instance.title,
      'imageUrl': instance.imageUrl,
    };
