// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  /// The URL for this user's avatar image.
  @JsonKey(name: 'avatar_url')
  String get avatarUrl => throw _privateConstructorUsedError;

  /// The URL for the banner image that appears atop this user's profile page.
  @JsonKey(name: 'banner_url')
  String get bannerUrl => throw _privateConstructorUsedError;

  /// The URL for this user's GIPHY profile.
  @JsonKey(name: 'profile_url')
  String get profileUrl => throw _privateConstructorUsedError;

  /// The username associated with this user.
  String get username => throw _privateConstructorUsedError;

  /// The display name associated with this user (contains formatting the base
  /// username might not).
  @JsonKey(name: 'display_name')
  String get displayName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'avatar_url') String avatarUrl,
      @JsonKey(name: 'banner_url') String bannerUrl,
      @JsonKey(name: 'profile_url') String profileUrl,
      String username,
      @JsonKey(name: 'display_name') String displayName});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res> implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  final UserModel _value;
  // ignore: unused_field
  final $Res Function(UserModel) _then;

  @override
  $Res call({
    Object? avatarUrl = freezed,
    Object? bannerUrl = freezed,
    Object? profileUrl = freezed,
    Object? username = freezed,
    Object? displayName = freezed,
  }) {
    return _then(_value.copyWith(
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      bannerUrl: bannerUrl == freezed
          ? _value.bannerUrl
          : bannerUrl // ignore: cast_nullable_to_non_nullable
              as String,
      profileUrl: profileUrl == freezed
          ? _value.profileUrl
          : profileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$$_UserModelCopyWith(
          _$_UserModel value, $Res Function(_$_UserModel) then) =
      __$$_UserModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'avatar_url') String avatarUrl,
      @JsonKey(name: 'banner_url') String bannerUrl,
      @JsonKey(name: 'profile_url') String profileUrl,
      String username,
      @JsonKey(name: 'display_name') String displayName});
}

/// @nodoc
class __$$_UserModelCopyWithImpl<$Res> extends _$UserModelCopyWithImpl<$Res>
    implements _$$_UserModelCopyWith<$Res> {
  __$$_UserModelCopyWithImpl(
      _$_UserModel _value, $Res Function(_$_UserModel) _then)
      : super(_value, (v) => _then(v as _$_UserModel));

  @override
  _$_UserModel get _value => super._value as _$_UserModel;

  @override
  $Res call({
    Object? avatarUrl = freezed,
    Object? bannerUrl = freezed,
    Object? profileUrl = freezed,
    Object? username = freezed,
    Object? displayName = freezed,
  }) {
    return _then(_$_UserModel(
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      bannerUrl: bannerUrl == freezed
          ? _value.bannerUrl
          : bannerUrl // ignore: cast_nullable_to_non_nullable
              as String,
      profileUrl: profileUrl == freezed
          ? _value.profileUrl
          : profileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModel implements _UserModel {
  const _$_UserModel(
      {@JsonKey(name: 'avatar_url') required this.avatarUrl,
      @JsonKey(name: 'banner_url') required this.bannerUrl,
      @JsonKey(name: 'profile_url') required this.profileUrl,
      required this.username,
      @JsonKey(name: 'display_name') required this.displayName});

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelFromJson(json);

  /// The URL for this user's avatar image.
  @override
  @JsonKey(name: 'avatar_url')
  final String avatarUrl;

  /// The URL for the banner image that appears atop this user's profile page.
  @override
  @JsonKey(name: 'banner_url')
  final String bannerUrl;

  /// The URL for this user's GIPHY profile.
  @override
  @JsonKey(name: 'profile_url')
  final String profileUrl;

  /// The username associated with this user.
  @override
  final String username;

  /// The display name associated with this user (contains formatting the base
  /// username might not).
  @override
  @JsonKey(name: 'display_name')
  final String displayName;

  @override
  String toString() {
    return 'UserModel(avatarUrl: $avatarUrl, bannerUrl: $bannerUrl, profileUrl: $profileUrl, username: $username, displayName: $displayName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserModel &&
            const DeepCollectionEquality().equals(other.avatarUrl, avatarUrl) &&
            const DeepCollectionEquality().equals(other.bannerUrl, bannerUrl) &&
            const DeepCollectionEquality()
                .equals(other.profileUrl, profileUrl) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality()
                .equals(other.displayName, displayName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(avatarUrl),
      const DeepCollectionEquality().hash(bannerUrl),
      const DeepCollectionEquality().hash(profileUrl),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(displayName));

  @JsonKey(ignore: true)
  @override
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      __$$_UserModelCopyWithImpl<_$_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
          {@JsonKey(name: 'avatar_url') required final String avatarUrl,
          @JsonKey(name: 'banner_url') required final String bannerUrl,
          @JsonKey(name: 'profile_url') required final String profileUrl,
          required final String username,
          @JsonKey(name: 'display_name') required final String displayName}) =
      _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override

  /// The URL for this user's avatar image.
  @JsonKey(name: 'avatar_url')
  String get avatarUrl;
  @override

  /// The URL for the banner image that appears atop this user's profile page.
  @JsonKey(name: 'banner_url')
  String get bannerUrl;
  @override

  /// The URL for this user's GIPHY profile.
  @JsonKey(name: 'profile_url')
  String get profileUrl;
  @override

  /// The username associated with this user.
  String get username;
  @override

  /// The display name associated with this user (contains formatting the base
  /// username might not).
  @JsonKey(name: 'display_name')
  String get displayName;
  @override
  @JsonKey(ignore: true)
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
