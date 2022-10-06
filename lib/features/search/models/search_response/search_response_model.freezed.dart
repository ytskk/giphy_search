// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchResponseModel _$SearchResponseModelFromJson(Map<String, dynamic> json) {
  return _SearchResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SearchResponseModel {
  List<GifModel> get data => throw _privateConstructorUsedError;
  PaginationModel get pagination => throw _privateConstructorUsedError;
  MetaModel get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResponseModelCopyWith<SearchResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResponseModelCopyWith<$Res> {
  factory $SearchResponseModelCopyWith(
          SearchResponseModel value, $Res Function(SearchResponseModel) then) =
      _$SearchResponseModelCopyWithImpl<$Res>;
  $Res call({List<GifModel> data, PaginationModel pagination, MetaModel meta});

  $PaginationModelCopyWith<$Res> get pagination;
  $MetaModelCopyWith<$Res> get meta;
}

/// @nodoc
class _$SearchResponseModelCopyWithImpl<$Res>
    implements $SearchResponseModelCopyWith<$Res> {
  _$SearchResponseModelCopyWithImpl(this._value, this._then);

  final SearchResponseModel _value;
  // ignore: unused_field
  final $Res Function(SearchResponseModel) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? pagination = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GifModel>,
      pagination: pagination == freezed
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationModel,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaModel,
    ));
  }

  @override
  $PaginationModelCopyWith<$Res> get pagination {
    return $PaginationModelCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value));
    });
  }

  @override
  $MetaModelCopyWith<$Res> get meta {
    return $MetaModelCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }
}

/// @nodoc
abstract class _$$_SearchResponseModelCopyWith<$Res>
    implements $SearchResponseModelCopyWith<$Res> {
  factory _$$_SearchResponseModelCopyWith(_$_SearchResponseModel value,
          $Res Function(_$_SearchResponseModel) then) =
      __$$_SearchResponseModelCopyWithImpl<$Res>;
  @override
  $Res call({List<GifModel> data, PaginationModel pagination, MetaModel meta});

  @override
  $PaginationModelCopyWith<$Res> get pagination;
  @override
  $MetaModelCopyWith<$Res> get meta;
}

/// @nodoc
class __$$_SearchResponseModelCopyWithImpl<$Res>
    extends _$SearchResponseModelCopyWithImpl<$Res>
    implements _$$_SearchResponseModelCopyWith<$Res> {
  __$$_SearchResponseModelCopyWithImpl(_$_SearchResponseModel _value,
      $Res Function(_$_SearchResponseModel) _then)
      : super(_value, (v) => _then(v as _$_SearchResponseModel));

  @override
  _$_SearchResponseModel get _value => super._value as _$_SearchResponseModel;

  @override
  $Res call({
    Object? data = freezed,
    Object? pagination = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$_SearchResponseModel(
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GifModel>,
      pagination: pagination == freezed
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationModel,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchResponseModel implements _SearchResponseModel {
  const _$_SearchResponseModel(
      {required final List<GifModel> data,
      required this.pagination,
      required this.meta})
      : _data = data;

  factory _$_SearchResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_SearchResponseModelFromJson(json);

  final List<GifModel> _data;
  @override
  List<GifModel> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final PaginationModel pagination;
  @override
  final MetaModel meta;

  @override
  String toString() {
    return 'SearchResponseModel(data: $data, pagination: $pagination, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchResponseModel &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality()
                .equals(other.pagination, pagination) &&
            const DeepCollectionEquality().equals(other.meta, meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(pagination),
      const DeepCollectionEquality().hash(meta));

  @JsonKey(ignore: true)
  @override
  _$$_SearchResponseModelCopyWith<_$_SearchResponseModel> get copyWith =>
      __$$_SearchResponseModelCopyWithImpl<_$_SearchResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchResponseModelToJson(
      this,
    );
  }
}

abstract class _SearchResponseModel implements SearchResponseModel {
  const factory _SearchResponseModel(
      {required final List<GifModel> data,
      required final PaginationModel pagination,
      required final MetaModel meta}) = _$_SearchResponseModel;

  factory _SearchResponseModel.fromJson(Map<String, dynamic> json) =
      _$_SearchResponseModel.fromJson;

  @override
  List<GifModel> get data;
  @override
  PaginationModel get pagination;
  @override
  MetaModel get meta;
  @override
  @JsonKey(ignore: true)
  _$$_SearchResponseModelCopyWith<_$_SearchResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
