// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gif_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GifModel _$GifModelFromJson(Map<String, dynamic> json) {
  return _GifModel.fromJson(json);
}

/// @nodoc
mixin _$GifModel {
  /// By default, this is almost always GIF.
  String get type => throw _privateConstructorUsedError;

  /// This GIF's unique ID.
  String get id => throw _privateConstructorUsedError;

  /// The unique slug used in this GIF's URL.
  String get slug => throw _privateConstructorUsedError;

  /// The unique URL for this GIF.
  String get url => throw _privateConstructorUsedError;

  /// The unique bit.ly URL for this GIF.
  @JsonKey(name: 'bitly_url')
  String get bitlyUrl => throw _privateConstructorUsedError;

  /// A URL used for embedding this GIF.
  @JsonKey(name: 'embed_url')
  String get embedUrl => throw _privateConstructorUsedError;

  /// The username this GIF is attached to, if applicable.
  String? get username => throw _privateConstructorUsedError;

  /// The page on which this GIF was found.
  String get source => throw _privateConstructorUsedError;

  /// The MPAA-style rating for this content. Examples include Y, G, PG, PG-13
  /// and R
  String get rating => throw _privateConstructorUsedError;

  /// An object containing data about the user associated with this GIF,
  /// if applicable.
  UserModel? get user => throw _privateConstructorUsedError;

  /// The date this GIF was added to the GIPHY database.
  @JsonKey(name: 'create_datetime')
  DateTime? get createDatetime => throw _privateConstructorUsedError;

  /// The title that appears on giphy.com for this GIF.
  String get title => throw _privateConstructorUsedError;

  /// An object containing data for various available formats and sizes
  /// of this GIF.
  ImagesModel get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GifModelCopyWith<GifModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GifModelCopyWith<$Res> {
  factory $GifModelCopyWith(GifModel value, $Res Function(GifModel) then) =
      _$GifModelCopyWithImpl<$Res>;
  $Res call(
      {String type,
      String id,
      String slug,
      String url,
      @JsonKey(name: 'bitly_url') String bitlyUrl,
      @JsonKey(name: 'embed_url') String embedUrl,
      String? username,
      String source,
      String rating,
      UserModel? user,
      @JsonKey(name: 'create_datetime') DateTime? createDatetime,
      String title,
      ImagesModel images});

  $UserModelCopyWith<$Res>? get user;
  $ImagesModelCopyWith<$Res> get images;
}

/// @nodoc
class _$GifModelCopyWithImpl<$Res> implements $GifModelCopyWith<$Res> {
  _$GifModelCopyWithImpl(this._value, this._then);

  final GifModel _value;
  // ignore: unused_field
  final $Res Function(GifModel) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? id = freezed,
    Object? slug = freezed,
    Object? url = freezed,
    Object? bitlyUrl = freezed,
    Object? embedUrl = freezed,
    Object? username = freezed,
    Object? source = freezed,
    Object? rating = freezed,
    Object? user = freezed,
    Object? createDatetime = freezed,
    Object? title = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      bitlyUrl: bitlyUrl == freezed
          ? _value.bitlyUrl
          : bitlyUrl // ignore: cast_nullable_to_non_nullable
              as String,
      embedUrl: embedUrl == freezed
          ? _value.embedUrl
          : embedUrl // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      createDatetime: createDatetime == freezed
          ? _value.createDatetime
          : createDatetime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as ImagesModel,
    ));
  }

  @override
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  $ImagesModelCopyWith<$Res> get images {
    return $ImagesModelCopyWith<$Res>(_value.images, (value) {
      return _then(_value.copyWith(images: value));
    });
  }
}

/// @nodoc
abstract class _$$_GifModelCopyWith<$Res> implements $GifModelCopyWith<$Res> {
  factory _$$_GifModelCopyWith(
          _$_GifModel value, $Res Function(_$_GifModel) then) =
      __$$_GifModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String type,
      String id,
      String slug,
      String url,
      @JsonKey(name: 'bitly_url') String bitlyUrl,
      @JsonKey(name: 'embed_url') String embedUrl,
      String? username,
      String source,
      String rating,
      UserModel? user,
      @JsonKey(name: 'create_datetime') DateTime? createDatetime,
      String title,
      ImagesModel images});

  @override
  $UserModelCopyWith<$Res>? get user;
  @override
  $ImagesModelCopyWith<$Res> get images;
}

/// @nodoc
class __$$_GifModelCopyWithImpl<$Res> extends _$GifModelCopyWithImpl<$Res>
    implements _$$_GifModelCopyWith<$Res> {
  __$$_GifModelCopyWithImpl(
      _$_GifModel _value, $Res Function(_$_GifModel) _then)
      : super(_value, (v) => _then(v as _$_GifModel));

  @override
  _$_GifModel get _value => super._value as _$_GifModel;

  @override
  $Res call({
    Object? type = freezed,
    Object? id = freezed,
    Object? slug = freezed,
    Object? url = freezed,
    Object? bitlyUrl = freezed,
    Object? embedUrl = freezed,
    Object? username = freezed,
    Object? source = freezed,
    Object? rating = freezed,
    Object? user = freezed,
    Object? createDatetime = freezed,
    Object? title = freezed,
    Object? images = freezed,
  }) {
    return _then(_$_GifModel(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      bitlyUrl: bitlyUrl == freezed
          ? _value.bitlyUrl
          : bitlyUrl // ignore: cast_nullable_to_non_nullable
              as String,
      embedUrl: embedUrl == freezed
          ? _value.embedUrl
          : embedUrl // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      createDatetime: createDatetime == freezed
          ? _value.createDatetime
          : createDatetime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as ImagesModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GifModel implements _GifModel {
  const _$_GifModel(
      {required this.type,
      required this.id,
      required this.slug,
      required this.url,
      @JsonKey(name: 'bitly_url') required this.bitlyUrl,
      @JsonKey(name: 'embed_url') required this.embedUrl,
      this.username,
      required this.source,
      required this.rating,
      this.user,
      @JsonKey(name: 'create_datetime') this.createDatetime,
      required this.title,
      required this.images});

  factory _$_GifModel.fromJson(Map<String, dynamic> json) =>
      _$$_GifModelFromJson(json);

  /// By default, this is almost always GIF.
  @override
  final String type;

  /// This GIF's unique ID.
  @override
  final String id;

  /// The unique slug used in this GIF's URL.
  @override
  final String slug;

  /// The unique URL for this GIF.
  @override
  final String url;

  /// The unique bit.ly URL for this GIF.
  @override
  @JsonKey(name: 'bitly_url')
  final String bitlyUrl;

  /// A URL used for embedding this GIF.
  @override
  @JsonKey(name: 'embed_url')
  final String embedUrl;

  /// The username this GIF is attached to, if applicable.
  @override
  final String? username;

  /// The page on which this GIF was found.
  @override
  final String source;

  /// The MPAA-style rating for this content. Examples include Y, G, PG, PG-13
  /// and R
  @override
  final String rating;

  /// An object containing data about the user associated with this GIF,
  /// if applicable.
  @override
  final UserModel? user;

  /// The date this GIF was added to the GIPHY database.
  @override
  @JsonKey(name: 'create_datetime')
  final DateTime? createDatetime;

  /// The title that appears on giphy.com for this GIF.
  @override
  final String title;

  /// An object containing data for various available formats and sizes
  /// of this GIF.
  @override
  final ImagesModel images;

  @override
  String toString() {
    return 'GifModel(type: $type, id: $id, slug: $slug, url: $url, bitlyUrl: $bitlyUrl, embedUrl: $embedUrl, username: $username, source: $source, rating: $rating, user: $user, createDatetime: $createDatetime, title: $title, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GifModel &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.slug, slug) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.bitlyUrl, bitlyUrl) &&
            const DeepCollectionEquality().equals(other.embedUrl, embedUrl) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.source, source) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality()
                .equals(other.createDatetime, createDatetime) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.images, images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(slug),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(bitlyUrl),
      const DeepCollectionEquality().hash(embedUrl),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(source),
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(createDatetime),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(images));

  @JsonKey(ignore: true)
  @override
  _$$_GifModelCopyWith<_$_GifModel> get copyWith =>
      __$$_GifModelCopyWithImpl<_$_GifModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GifModelToJson(
      this,
    );
  }
}

abstract class _GifModel implements GifModel {
  const factory _GifModel(
      {required final String type,
      required final String id,
      required final String slug,
      required final String url,
      @JsonKey(name: 'bitly_url') required final String bitlyUrl,
      @JsonKey(name: 'embed_url') required final String embedUrl,
      final String? username,
      required final String source,
      required final String rating,
      final UserModel? user,
      @JsonKey(name: 'create_datetime') final DateTime? createDatetime,
      required final String title,
      required final ImagesModel images}) = _$_GifModel;

  factory _GifModel.fromJson(Map<String, dynamic> json) = _$_GifModel.fromJson;

  @override

  /// By default, this is almost always GIF.
  String get type;
  @override

  /// This GIF's unique ID.
  String get id;
  @override

  /// The unique slug used in this GIF's URL.
  String get slug;
  @override

  /// The unique URL for this GIF.
  String get url;
  @override

  /// The unique bit.ly URL for this GIF.
  @JsonKey(name: 'bitly_url')
  String get bitlyUrl;
  @override

  /// A URL used for embedding this GIF.
  @JsonKey(name: 'embed_url')
  String get embedUrl;
  @override

  /// The username this GIF is attached to, if applicable.
  String? get username;
  @override

  /// The page on which this GIF was found.
  String get source;
  @override

  /// The MPAA-style rating for this content. Examples include Y, G, PG, PG-13
  /// and R
  String get rating;
  @override

  /// An object containing data about the user associated with this GIF,
  /// if applicable.
  UserModel? get user;
  @override

  /// The date this GIF was added to the GIPHY database.
  @JsonKey(name: 'create_datetime')
  DateTime? get createDatetime;
  @override

  /// The title that appears on giphy.com for this GIF.
  String get title;
  @override

  /// An object containing data for various available formats and sizes
  /// of this GIF.
  ImagesModel get images;
  @override
  @JsonKey(ignore: true)
  _$$_GifModelCopyWith<_$_GifModel> get copyWith =>
      throw _privateConstructorUsedError;
}
