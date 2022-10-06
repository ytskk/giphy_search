// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MetaModel _$$_MetaModelFromJson(Map<String, dynamic> json) => _$_MetaModel(
      msg: json['msg'] as String,
      status: json['status'] as int,
      responseId: json['response_id'] as String?,
    );

Map<String, dynamic> _$$_MetaModelToJson(_$_MetaModel instance) =>
    <String, dynamic>{
      'msg': instance.msg,
      'status': instance.status,
      'response_id': instance.responseId,
    };
