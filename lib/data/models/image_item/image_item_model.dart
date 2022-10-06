import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_item_model.freezed.dart';
part 'image_item_model.g.dart';

@freezed
class ImageItemModel with _$ImageItemModel {
  /// The Image Object contains information about a GIF's file.
  ///
  /// This includes the URL, width, height, size, and other metadata.
  const factory ImageItemModel({
    /// The publicly-accessible direct URL for this GIF for this size of the GIF.
    String? url,

    /// The width of this GIF in pixels.
    String? width,

    /// The height of this GIF in pixels.
    String? height,

    /// The size of this GIF in bytes.
    String? size,

    /// The number of frames in this GIF.
    String? frames,

    /// The URL for this GIF in .MP4 format.
    String? mp4,

    /// The size in bytes of the .MP4 file corresponding to this GIF.
    @JsonKey(name: 'mp4_size') String? mp4Size,

    /// The URL for this GIF in .webp format.
    String? webp,

    /// The size in bytes of the .webp file corresponding to this GIF.
    @JsonKey(name: 'webp_size') String? webpSize,
  }) = _ImageItemModel;

  factory ImageItemModel.fromJson(Map<String, dynamic> json) =>
      _$ImageItemModelFromJson(json);
}
