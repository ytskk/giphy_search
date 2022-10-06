import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta_model.freezed.dart';
part 'meta_model.g.dart';

@freezed
class MetaModel with _$MetaModel {
  /// The Meta Object contains basic information regarding the response
  /// and its status.
  const factory MetaModel({
    /// HTTP Response Message.
    required String msg,

    /// HTTP Response Code.
    required int status,

    /// A unique ID paired with this response from the API.
    @JsonKey(name: 'response_id') String? responseId,
  }) = _MetaModel;

  factory MetaModel.fromJson(Map<String, dynamic> json) =>
      _$MetaModelFromJson(json);
}
