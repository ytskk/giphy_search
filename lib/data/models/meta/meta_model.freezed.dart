// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'meta_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MetaModel _$MetaModelFromJson(Map<String, dynamic> json) {
  return _MetaModel.fromJson(json);
}

/// @nodoc
mixin _$MetaModel {
  /// HTTP Response Message.
  String get msg => throw _privateConstructorUsedError;

  /// HTTP Response Code.
  int get status => throw _privateConstructorUsedError;

  /// A unique ID paired with this response from the API.
  @JsonKey(name: 'response_id')
  String? get responseId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaModelCopyWith<MetaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaModelCopyWith<$Res> {
  factory $MetaModelCopyWith(MetaModel value, $Res Function(MetaModel) then) =
      _$MetaModelCopyWithImpl<$Res>;
  $Res call(
      {String msg,
      int status,
      @JsonKey(name: 'response_id') String? responseId});
}

/// @nodoc
class _$MetaModelCopyWithImpl<$Res> implements $MetaModelCopyWith<$Res> {
  _$MetaModelCopyWithImpl(this._value, this._then);

  final MetaModel _value;
  // ignore: unused_field
  final $Res Function(MetaModel) _then;

  @override
  $Res call({
    Object? msg = freezed,
    Object? status = freezed,
    Object? responseId = freezed,
  }) {
    return _then(_value.copyWith(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      responseId: responseId == freezed
          ? _value.responseId
          : responseId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_MetaModelCopyWith<$Res> implements $MetaModelCopyWith<$Res> {
  factory _$$_MetaModelCopyWith(
          _$_MetaModel value, $Res Function(_$_MetaModel) then) =
      __$$_MetaModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String msg,
      int status,
      @JsonKey(name: 'response_id') String? responseId});
}

/// @nodoc
class __$$_MetaModelCopyWithImpl<$Res> extends _$MetaModelCopyWithImpl<$Res>
    implements _$$_MetaModelCopyWith<$Res> {
  __$$_MetaModelCopyWithImpl(
      _$_MetaModel _value, $Res Function(_$_MetaModel) _then)
      : super(_value, (v) => _then(v as _$_MetaModel));

  @override
  _$_MetaModel get _value => super._value as _$_MetaModel;

  @override
  $Res call({
    Object? msg = freezed,
    Object? status = freezed,
    Object? responseId = freezed,
  }) {
    return _then(_$_MetaModel(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      responseId: responseId == freezed
          ? _value.responseId
          : responseId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MetaModel implements _MetaModel {
  const _$_MetaModel(
      {required this.msg,
      required this.status,
      @JsonKey(name: 'response_id') this.responseId});

  factory _$_MetaModel.fromJson(Map<String, dynamic> json) =>
      _$$_MetaModelFromJson(json);

  /// HTTP Response Message.
  @override
  final String msg;

  /// HTTP Response Code.
  @override
  final int status;

  /// A unique ID paired with this response from the API.
  @override
  @JsonKey(name: 'response_id')
  final String? responseId;

  @override
  String toString() {
    return 'MetaModel(msg: $msg, status: $status, responseId: $responseId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MetaModel &&
            const DeepCollectionEquality().equals(other.msg, msg) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.responseId, responseId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(msg),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(responseId));

  @JsonKey(ignore: true)
  @override
  _$$_MetaModelCopyWith<_$_MetaModel> get copyWith =>
      __$$_MetaModelCopyWithImpl<_$_MetaModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaModelToJson(
      this,
    );
  }
}

abstract class _MetaModel implements MetaModel {
  const factory _MetaModel(
      {required final String msg,
      required final int status,
      @JsonKey(name: 'response_id') final String? responseId}) = _$_MetaModel;

  factory _MetaModel.fromJson(Map<String, dynamic> json) =
      _$_MetaModel.fromJson;

  @override

  /// HTTP Response Message.
  String get msg;
  @override

  /// HTTP Response Code.
  int get status;
  @override

  /// A unique ID paired with this response from the API.
  @JsonKey(name: 'response_id')
  String? get responseId;
  @override
  @JsonKey(ignore: true)
  _$$_MetaModelCopyWith<_$_MetaModel> get copyWith =>
      throw _privateConstructorUsedError;
}
