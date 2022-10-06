import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:giphy/data/data.dart';

part 'search_response_model.freezed.dart';
part 'search_response_model.g.dart';

@freezed
class SearchResponseModel with _$SearchResponseModel {
  const factory SearchResponseModel({
    required List<GifModel> data,
    required PaginationModel pagination,
    required MetaModel meta,
  }) = _SearchResponseModel;

  factory SearchResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseModelFromJson(json);
}
