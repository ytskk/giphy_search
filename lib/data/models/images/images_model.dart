import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:giphy/data/data.dart';

part 'images_model.freezed.dart';
part 'images_model.g.dart';

@freezed
class ImagesModel with _$ImagesModel {
  /// The Images Object contains all of the available GIFs for a given GIF.
  ///
  /// These are the different sizes and formats of the GIF.
  const factory ImagesModel({
    /// Data on the original version of this GIF. Good for desktop use.
    ImageItemModel? original,

    /// Data on versions of this GIF with a fixed height of 200 pixels.
    ///
    /// Good for mobile use.
    @JsonKey(name: 'fixed_height') required ImageItemModel fixedHeight,

    /// Data on a static image of this GIF with a fixed height of 200 pixels.
    ///
    /// Good for mobile use.
    @JsonKey(name: 'fixed_height_still')
        required ImageItemModel fixedHeightStill,

    /// Data on versions of this GIF with a fixed width of 200 pixels.
    ///
    /// Good for mobile use.
    @JsonKey(name: 'fixed_width') required ImageItemModel fixedWidth,

    /// Data on a static image of this GIF with a fixed width of 200 pixels.
    ///
    /// Good for mobile use.
    @JsonKey(name: 'fixed_width_still') required ImageItemModel fixedWidthStill,

    /// Data on a static preview image of the downsized version of this GIF.
    @JsonKey(name: 'downsized_still') required ImageItemModel downsizedStill,
  }) = _ImagesModel;

  factory ImagesModel.fromJson(Map<String, dynamic> json) =>
      _$ImagesModelFromJson(json);
}
