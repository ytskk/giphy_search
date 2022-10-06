import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:giphy/data/data.dart';
import 'package:giphy/data/models/user/user_model.dart';

part 'gif_model.freezed.dart';
part 'gif_model.g.dart';

@freezed
class GifModel with _$GifModel {
  /// GIF Objects are returned from most of GIPHY API's Endpoints.
  ///
  /// These objects contain a variety of information, such as the Image Object,
  /// which itself includes the URLS for multiple different GIFS formats and sizes.
  const factory GifModel({
    /// By default, this is almost always GIF.
    required String type,

    /// This GIF's unique ID.
    required String id,

    /// The unique slug used in this GIF's URL.
    required String slug,

    /// The unique URL for this GIF.
    required String url,

    /// The unique bit.ly URL for this GIF.
    @JsonKey(name: 'bitly_url') required String bitlyUrl,

    /// A URL used for embedding this GIF.
    @JsonKey(name: 'embed_url') required String embedUrl,

    /// The username this GIF is attached to, if applicable.
    String? username,

    /// The page on which this GIF was found.
    required String source,

    /// The MPAA-style rating for this content. Examples include Y, G, PG, PG-13
    /// and R
    required String rating,

    /// An object containing data about the user associated with this GIF,
    /// if applicable.
    UserModel? user,

    /// The date this GIF was added to the GIPHY database.
    @JsonKey(name: 'create_datetime') DateTime? createDatetime,

    /// The title that appears on giphy.com for this GIF.
    required String title,

    /// An object containing data for various available formats and sizes
    /// of this GIF.
    required ImagesModel images,
  }) = _GifModel;

  factory GifModel.fromJson(Map<String, dynamic> json) =>
      _$GifModelFromJson(json);
}
