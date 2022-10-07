// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'images_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImagesModel _$ImagesModelFromJson(Map<String, dynamic> json) {
  return _ImagesModel.fromJson(json);
}

/// @nodoc
mixin _$ImagesModel {
  /// Data on the original version of this GIF. Good for desktop use.
  ImageItemModel? get original => throw _privateConstructorUsedError;

  /// Data on versions of this GIF with a fixed height of 200 pixels.
  ///
  /// Good for mobile use.
  @JsonKey(name: 'fixed_height')
  ImageItemModel get fixedHeight => throw _privateConstructorUsedError;

  /// Data on a static image of this GIF with a fixed height of 200 pixels.
  ///
  /// Good for mobile use.
  @JsonKey(name: 'fixed_height_still')
  ImageItemModel get fixedHeightStill => throw _privateConstructorUsedError;

  /// Data on versions of this GIF with a fixed width of 200 pixels.
  ///
  /// Good for mobile use.
  @JsonKey(name: 'fixed_width')
  ImageItemModel get fixedWidth => throw _privateConstructorUsedError;

  /// Data on a static image of this GIF with a fixed width of 200 pixels.
  ///
  /// Good for mobile use.
  @JsonKey(name: 'fixed_width_still')
  ImageItemModel get fixedWidthStill => throw _privateConstructorUsedError;

  /// Data on a static preview image of the downsized version of this GIF.
  @JsonKey(name: 'downsized_still')
  ImageItemModel get downsizedStill => throw _privateConstructorUsedError;

  /// Data on a version of this GIF downsized to be under 200kb.
  @JsonKey(name: 'downsized_small')
  ImageItemModel get downsizedSmall => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImagesModelCopyWith<ImagesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesModelCopyWith<$Res> {
  factory $ImagesModelCopyWith(
          ImagesModel value, $Res Function(ImagesModel) then) =
      _$ImagesModelCopyWithImpl<$Res>;
  $Res call(
      {ImageItemModel? original,
      @JsonKey(name: 'fixed_height') ImageItemModel fixedHeight,
      @JsonKey(name: 'fixed_height_still') ImageItemModel fixedHeightStill,
      @JsonKey(name: 'fixed_width') ImageItemModel fixedWidth,
      @JsonKey(name: 'fixed_width_still') ImageItemModel fixedWidthStill,
      @JsonKey(name: 'downsized_still') ImageItemModel downsizedStill,
      @JsonKey(name: 'downsized_small') ImageItemModel downsizedSmall});

  $ImageItemModelCopyWith<$Res>? get original;
  $ImageItemModelCopyWith<$Res> get fixedHeight;
  $ImageItemModelCopyWith<$Res> get fixedHeightStill;
  $ImageItemModelCopyWith<$Res> get fixedWidth;
  $ImageItemModelCopyWith<$Res> get fixedWidthStill;
  $ImageItemModelCopyWith<$Res> get downsizedStill;
  $ImageItemModelCopyWith<$Res> get downsizedSmall;
}

/// @nodoc
class _$ImagesModelCopyWithImpl<$Res> implements $ImagesModelCopyWith<$Res> {
  _$ImagesModelCopyWithImpl(this._value, this._then);

  final ImagesModel _value;
  // ignore: unused_field
  final $Res Function(ImagesModel) _then;

  @override
  $Res call({
    Object? original = freezed,
    Object? fixedHeight = freezed,
    Object? fixedHeightStill = freezed,
    Object? fixedWidth = freezed,
    Object? fixedWidthStill = freezed,
    Object? downsizedStill = freezed,
    Object? downsizedSmall = freezed,
  }) {
    return _then(_value.copyWith(
      original: original == freezed
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as ImageItemModel?,
      fixedHeight: fixedHeight == freezed
          ? _value.fixedHeight
          : fixedHeight // ignore: cast_nullable_to_non_nullable
              as ImageItemModel,
      fixedHeightStill: fixedHeightStill == freezed
          ? _value.fixedHeightStill
          : fixedHeightStill // ignore: cast_nullable_to_non_nullable
              as ImageItemModel,
      fixedWidth: fixedWidth == freezed
          ? _value.fixedWidth
          : fixedWidth // ignore: cast_nullable_to_non_nullable
              as ImageItemModel,
      fixedWidthStill: fixedWidthStill == freezed
          ? _value.fixedWidthStill
          : fixedWidthStill // ignore: cast_nullable_to_non_nullable
              as ImageItemModel,
      downsizedStill: downsizedStill == freezed
          ? _value.downsizedStill
          : downsizedStill // ignore: cast_nullable_to_non_nullable
              as ImageItemModel,
      downsizedSmall: downsizedSmall == freezed
          ? _value.downsizedSmall
          : downsizedSmall // ignore: cast_nullable_to_non_nullable
              as ImageItemModel,
    ));
  }

  @override
  $ImageItemModelCopyWith<$Res>? get original {
    if (_value.original == null) {
      return null;
    }

    return $ImageItemModelCopyWith<$Res>(_value.original!, (value) {
      return _then(_value.copyWith(original: value));
    });
  }

  @override
  $ImageItemModelCopyWith<$Res> get fixedHeight {
    return $ImageItemModelCopyWith<$Res>(_value.fixedHeight, (value) {
      return _then(_value.copyWith(fixedHeight: value));
    });
  }

  @override
  $ImageItemModelCopyWith<$Res> get fixedHeightStill {
    return $ImageItemModelCopyWith<$Res>(_value.fixedHeightStill, (value) {
      return _then(_value.copyWith(fixedHeightStill: value));
    });
  }

  @override
  $ImageItemModelCopyWith<$Res> get fixedWidth {
    return $ImageItemModelCopyWith<$Res>(_value.fixedWidth, (value) {
      return _then(_value.copyWith(fixedWidth: value));
    });
  }

  @override
  $ImageItemModelCopyWith<$Res> get fixedWidthStill {
    return $ImageItemModelCopyWith<$Res>(_value.fixedWidthStill, (value) {
      return _then(_value.copyWith(fixedWidthStill: value));
    });
  }

  @override
  $ImageItemModelCopyWith<$Res> get downsizedStill {
    return $ImageItemModelCopyWith<$Res>(_value.downsizedStill, (value) {
      return _then(_value.copyWith(downsizedStill: value));
    });
  }

  @override
  $ImageItemModelCopyWith<$Res> get downsizedSmall {
    return $ImageItemModelCopyWith<$Res>(_value.downsizedSmall, (value) {
      return _then(_value.copyWith(downsizedSmall: value));
    });
  }
}

/// @nodoc
abstract class _$$_ImagesModelCopyWith<$Res>
    implements $ImagesModelCopyWith<$Res> {
  factory _$$_ImagesModelCopyWith(
          _$_ImagesModel value, $Res Function(_$_ImagesModel) then) =
      __$$_ImagesModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {ImageItemModel? original,
      @JsonKey(name: 'fixed_height') ImageItemModel fixedHeight,
      @JsonKey(name: 'fixed_height_still') ImageItemModel fixedHeightStill,
      @JsonKey(name: 'fixed_width') ImageItemModel fixedWidth,
      @JsonKey(name: 'fixed_width_still') ImageItemModel fixedWidthStill,
      @JsonKey(name: 'downsized_still') ImageItemModel downsizedStill,
      @JsonKey(name: 'downsized_small') ImageItemModel downsizedSmall});

  @override
  $ImageItemModelCopyWith<$Res>? get original;
  @override
  $ImageItemModelCopyWith<$Res> get fixedHeight;
  @override
  $ImageItemModelCopyWith<$Res> get fixedHeightStill;
  @override
  $ImageItemModelCopyWith<$Res> get fixedWidth;
  @override
  $ImageItemModelCopyWith<$Res> get fixedWidthStill;
  @override
  $ImageItemModelCopyWith<$Res> get downsizedStill;
  @override
  $ImageItemModelCopyWith<$Res> get downsizedSmall;
}

/// @nodoc
class __$$_ImagesModelCopyWithImpl<$Res> extends _$ImagesModelCopyWithImpl<$Res>
    implements _$$_ImagesModelCopyWith<$Res> {
  __$$_ImagesModelCopyWithImpl(
      _$_ImagesModel _value, $Res Function(_$_ImagesModel) _then)
      : super(_value, (v) => _then(v as _$_ImagesModel));

  @override
  _$_ImagesModel get _value => super._value as _$_ImagesModel;

  @override
  $Res call({
    Object? original = freezed,
    Object? fixedHeight = freezed,
    Object? fixedHeightStill = freezed,
    Object? fixedWidth = freezed,
    Object? fixedWidthStill = freezed,
    Object? downsizedStill = freezed,
    Object? downsizedSmall = freezed,
  }) {
    return _then(_$_ImagesModel(
      original: original == freezed
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as ImageItemModel?,
      fixedHeight: fixedHeight == freezed
          ? _value.fixedHeight
          : fixedHeight // ignore: cast_nullable_to_non_nullable
              as ImageItemModel,
      fixedHeightStill: fixedHeightStill == freezed
          ? _value.fixedHeightStill
          : fixedHeightStill // ignore: cast_nullable_to_non_nullable
              as ImageItemModel,
      fixedWidth: fixedWidth == freezed
          ? _value.fixedWidth
          : fixedWidth // ignore: cast_nullable_to_non_nullable
              as ImageItemModel,
      fixedWidthStill: fixedWidthStill == freezed
          ? _value.fixedWidthStill
          : fixedWidthStill // ignore: cast_nullable_to_non_nullable
              as ImageItemModel,
      downsizedStill: downsizedStill == freezed
          ? _value.downsizedStill
          : downsizedStill // ignore: cast_nullable_to_non_nullable
              as ImageItemModel,
      downsizedSmall: downsizedSmall == freezed
          ? _value.downsizedSmall
          : downsizedSmall // ignore: cast_nullable_to_non_nullable
              as ImageItemModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImagesModel implements _ImagesModel {
  const _$_ImagesModel(
      {this.original,
      @JsonKey(name: 'fixed_height') required this.fixedHeight,
      @JsonKey(name: 'fixed_height_still') required this.fixedHeightStill,
      @JsonKey(name: 'fixed_width') required this.fixedWidth,
      @JsonKey(name: 'fixed_width_still') required this.fixedWidthStill,
      @JsonKey(name: 'downsized_still') required this.downsizedStill,
      @JsonKey(name: 'downsized_small') required this.downsizedSmall});

  factory _$_ImagesModel.fromJson(Map<String, dynamic> json) =>
      _$$_ImagesModelFromJson(json);

  /// Data on the original version of this GIF. Good for desktop use.
  @override
  final ImageItemModel? original;

  /// Data on versions of this GIF with a fixed height of 200 pixels.
  ///
  /// Good for mobile use.
  @override
  @JsonKey(name: 'fixed_height')
  final ImageItemModel fixedHeight;

  /// Data on a static image of this GIF with a fixed height of 200 pixels.
  ///
  /// Good for mobile use.
  @override
  @JsonKey(name: 'fixed_height_still')
  final ImageItemModel fixedHeightStill;

  /// Data on versions of this GIF with a fixed width of 200 pixels.
  ///
  /// Good for mobile use.
  @override
  @JsonKey(name: 'fixed_width')
  final ImageItemModel fixedWidth;

  /// Data on a static image of this GIF with a fixed width of 200 pixels.
  ///
  /// Good for mobile use.
  @override
  @JsonKey(name: 'fixed_width_still')
  final ImageItemModel fixedWidthStill;

  /// Data on a static preview image of the downsized version of this GIF.
  @override
  @JsonKey(name: 'downsized_still')
  final ImageItemModel downsizedStill;

  /// Data on a version of this GIF downsized to be under 200kb.
  @override
  @JsonKey(name: 'downsized_small')
  final ImageItemModel downsizedSmall;

  @override
  String toString() {
    return 'ImagesModel(original: $original, fixedHeight: $fixedHeight, fixedHeightStill: $fixedHeightStill, fixedWidth: $fixedWidth, fixedWidthStill: $fixedWidthStill, downsizedStill: $downsizedStill, downsizedSmall: $downsizedSmall)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImagesModel &&
            const DeepCollectionEquality().equals(other.original, original) &&
            const DeepCollectionEquality()
                .equals(other.fixedHeight, fixedHeight) &&
            const DeepCollectionEquality()
                .equals(other.fixedHeightStill, fixedHeightStill) &&
            const DeepCollectionEquality()
                .equals(other.fixedWidth, fixedWidth) &&
            const DeepCollectionEquality()
                .equals(other.fixedWidthStill, fixedWidthStill) &&
            const DeepCollectionEquality()
                .equals(other.downsizedStill, downsizedStill) &&
            const DeepCollectionEquality()
                .equals(other.downsizedSmall, downsizedSmall));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(original),
      const DeepCollectionEquality().hash(fixedHeight),
      const DeepCollectionEquality().hash(fixedHeightStill),
      const DeepCollectionEquality().hash(fixedWidth),
      const DeepCollectionEquality().hash(fixedWidthStill),
      const DeepCollectionEquality().hash(downsizedStill),
      const DeepCollectionEquality().hash(downsizedSmall));

  @JsonKey(ignore: true)
  @override
  _$$_ImagesModelCopyWith<_$_ImagesModel> get copyWith =>
      __$$_ImagesModelCopyWithImpl<_$_ImagesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImagesModelToJson(
      this,
    );
  }
}

abstract class _ImagesModel implements ImagesModel {
  const factory _ImagesModel(
      {final ImageItemModel? original,
      @JsonKey(name: 'fixed_height')
          required final ImageItemModel fixedHeight,
      @JsonKey(name: 'fixed_height_still')
          required final ImageItemModel fixedHeightStill,
      @JsonKey(name: 'fixed_width')
          required final ImageItemModel fixedWidth,
      @JsonKey(name: 'fixed_width_still')
          required final ImageItemModel fixedWidthStill,
      @JsonKey(name: 'downsized_still')
          required final ImageItemModel downsizedStill,
      @JsonKey(name: 'downsized_small')
          required final ImageItemModel downsizedSmall}) = _$_ImagesModel;

  factory _ImagesModel.fromJson(Map<String, dynamic> json) =
      _$_ImagesModel.fromJson;

  @override

  /// Data on the original version of this GIF. Good for desktop use.
  ImageItemModel? get original;
  @override

  /// Data on versions of this GIF with a fixed height of 200 pixels.
  ///
  /// Good for mobile use.
  @JsonKey(name: 'fixed_height')
  ImageItemModel get fixedHeight;
  @override

  /// Data on a static image of this GIF with a fixed height of 200 pixels.
  ///
  /// Good for mobile use.
  @JsonKey(name: 'fixed_height_still')
  ImageItemModel get fixedHeightStill;
  @override

  /// Data on versions of this GIF with a fixed width of 200 pixels.
  ///
  /// Good for mobile use.
  @JsonKey(name: 'fixed_width')
  ImageItemModel get fixedWidth;
  @override

  /// Data on a static image of this GIF with a fixed width of 200 pixels.
  ///
  /// Good for mobile use.
  @JsonKey(name: 'fixed_width_still')
  ImageItemModel get fixedWidthStill;
  @override

  /// Data on a static preview image of the downsized version of this GIF.
  @JsonKey(name: 'downsized_still')
  ImageItemModel get downsizedStill;
  @override

  /// Data on a version of this GIF downsized to be under 200kb.
  @JsonKey(name: 'downsized_small')
  ImageItemModel get downsizedSmall;
  @override
  @JsonKey(ignore: true)
  _$$_ImagesModelCopyWith<_$_ImagesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
