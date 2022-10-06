// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ImageItemModel _$$_ImageItemModelFromJson(Map<String, dynamic> json) =>
    _$_ImageItemModel(
      url: json['url'] as String?,
      width: json['width'] as String?,
      height: json['height'] as String?,
      size: json['size'] as String?,
      frames: json['frames'] as String?,
      mp4: json['mp4'] as String?,
      mp4Size: json['mp4_size'] as String?,
      webp: json['webp'] as String?,
      webpSize: json['webp_size'] as String?,
    );

Map<String, dynamic> _$$_ImageItemModelToJson(_$_ImageItemModel instance) =>
    <String, dynamic>{
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
      'size': instance.size,
      'frames': instance.frames,
      'mp4': instance.mp4,
      'mp4_size': instance.mp4Size,
      'webp': instance.webp,
      'webp_size': instance.webpSize,
    };
