// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'images_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ImagesModel _$$_ImagesModelFromJson(Map<String, dynamic> json) =>
    _$_ImagesModel(
      original: json['original'] == null
          ? null
          : ImageItemModel.fromJson(json['original'] as Map<String, dynamic>),
      fixedHeight:
          ImageItemModel.fromJson(json['fixed_height'] as Map<String, dynamic>),
      fixedHeightStill: ImageItemModel.fromJson(
          json['fixed_height_still'] as Map<String, dynamic>),
      fixedWidth:
          ImageItemModel.fromJson(json['fixed_width'] as Map<String, dynamic>),
      fixedWidthStill: ImageItemModel.fromJson(
          json['fixed_width_still'] as Map<String, dynamic>),
      downsizedStill: ImageItemModel.fromJson(
          json['downsized_still'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ImagesModelToJson(_$_ImagesModel instance) =>
    <String, dynamic>{
      'original': instance.original,
      'fixed_height': instance.fixedHeight,
      'fixed_height_still': instance.fixedHeightStill,
      'fixed_width': instance.fixedWidth,
      'fixed_width_still': instance.fixedWidthStill,
      'downsized_still': instance.downsizedStill,
    };
