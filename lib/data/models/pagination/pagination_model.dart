import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_model.freezed.dart';
part 'pagination_model.g.dart';

@freezed
class PaginationModel with _$PaginationModel {
  /// The Pagination Object contains information relating to the number of total
  /// results available as well as the number of results fetched and their
  /// relative positions.
  const factory PaginationModel({
    /// Position in pagination.
    required int offset,

    /// Total number of items available (not returned on every endpoint).
    @JsonKey(name: 'total_count') required int totalCount,

    /// Total number of items returned.
    required int count,
  }) = _PaginationModel;

  factory PaginationModel.fromJson(Map<String, dynamic> json) =>
      _$PaginationModelFromJson(json);
}
