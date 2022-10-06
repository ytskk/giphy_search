// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      avatarUrl: json['avatar_url'] as String,
      bannerUrl: json['banner_url'] as String,
      profileUrl: json['profile_url'] as String,
      username: json['username'] as String,
      displayName: json['display_name'] as String,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'avatar_url': instance.avatarUrl,
      'banner_url': instance.bannerUrl,
      'profile_url': instance.profileUrl,
      'username': instance.username,
      'display_name': instance.displayName,
    };
