import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  /// The User Object contains information about the user associated with a GIF
  /// and URLs to assets such as that user's avatar image, GIPHY profile, and more.
  const factory UserModel({
    /// The URL for this user's avatar image.
    @JsonKey(name: 'avatar_url') required String avatarUrl,

    /// The URL for the banner image that appears atop this user's profile page.
    @JsonKey(name: 'banner_url') required String bannerUrl,

    /// The URL for this user's GIPHY profile.
    @JsonKey(name: 'profile_url') required String profileUrl,

    /// The username associated with this user.
    required String username,

    /// The display name associated with this user (contains formatting the base
    /// username might not).
    @JsonKey(name: 'display_name') required String displayName,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
