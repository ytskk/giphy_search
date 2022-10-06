// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gif_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GifModel _$$_GifModelFromJson(Map<String, dynamic> json) => _$_GifModel(
      type: json['type'] as String,
      id: json['id'] as String,
      slug: json['slug'] as String,
      url: json['url'] as String,
      bitlyUrl: json['bitly_url'] as String,
      embedUrl: json['embed_url'] as String,
      username: json['username'] as String?,
      source: json['source'] as String,
      rating: json['rating'] as String,
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      createDatetime: json['create_datetime'] == null
          ? null
          : DateTime.parse(json['create_datetime'] as String),
      title: json['title'] as String,
      images: ImagesModel.fromJson(json['images'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GifModelToJson(_$_GifModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'slug': instance.slug,
      'url': instance.url,
      'bitly_url': instance.bitlyUrl,
      'embed_url': instance.embedUrl,
      'username': instance.username,
      'source': instance.source,
      'rating': instance.rating,
      'user': instance.user,
      'create_datetime': instance.createDatetime?.toIso8601String(),
      'title': instance.title,
      'images': instance.images,
    };
