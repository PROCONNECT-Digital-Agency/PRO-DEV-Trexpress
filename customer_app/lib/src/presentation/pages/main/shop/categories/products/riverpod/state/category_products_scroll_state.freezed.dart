// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_products_scroll_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryProductsScrollState {
  bool get isVisible => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryProductsScrollStateCopyWith<CategoryProductsScrollState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryProductsScrollStateCopyWith<$Res> {
  factory $CategoryProductsScrollStateCopyWith(
          CategoryProductsScrollState value,
          $Res Function(CategoryProductsScrollState) then) =
      _$CategoryProductsScrollStateCopyWithImpl<$Res,
          CategoryProductsScrollState>;
  @useResult
  $Res call({bool isVisible});
}

/// @nodoc
class _$CategoryProductsScrollStateCopyWithImpl<$Res,
        $Val extends CategoryProductsScrollState>
    implements $CategoryProductsScrollStateCopyWith<$Res> {
  _$CategoryProductsScrollStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isVisible = null,
  }) {
    return _then(_value.copyWith(
      isVisible: null == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryProductsScrollStateeCopyWith<$Res>
    implements $CategoryProductsScrollStateCopyWith<$Res> {
  factory _$$_CategoryProductsScrollStateeCopyWith(
          _$_CategoryProductsScrollStatee value,
          $Res Function(_$_CategoryProductsScrollStatee) then) =
      __$$_CategoryProductsScrollStateeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isVisible});
}

/// @nodoc
class __$$_CategoryProductsScrollStateeCopyWithImpl<$Res>
    extends _$CategoryProductsScrollStateCopyWithImpl<$Res,
        _$_CategoryProductsScrollStatee>
    implements _$$_CategoryProductsScrollStateeCopyWith<$Res> {
  __$$_CategoryProductsScrollStateeCopyWithImpl(
      _$_CategoryProductsScrollStatee _value,
      $Res Function(_$_CategoryProductsScrollStatee) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isVisible = null,
  }) {
    return _then(_$_CategoryProductsScrollStatee(
      isVisible: null == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CategoryProductsScrollStatee extends _CategoryProductsScrollStatee {
  const _$_CategoryProductsScrollStatee({this.isVisible = false}) : super._();

  @override
  @JsonKey()
  final bool isVisible;

  @override
  String toString() {
    return 'CategoryProductsScrollState(isVisible: $isVisible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryProductsScrollStatee &&
            (identical(other.isVisible, isVisible) ||
                other.isVisible == isVisible));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isVisible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryProductsScrollStateeCopyWith<_$_CategoryProductsScrollStatee>
      get copyWith => __$$_CategoryProductsScrollStateeCopyWithImpl<
          _$_CategoryProductsScrollStatee>(this, _$identity);
}

abstract class _CategoryProductsScrollStatee
    extends CategoryProductsScrollState {
  const factory _CategoryProductsScrollStatee({final bool isVisible}) =
      _$_CategoryProductsScrollStatee;
  const _CategoryProductsScrollStatee._() : super._();

  @override
  bool get isVisible;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryProductsScrollStateeCopyWith<_$_CategoryProductsScrollStatee>
      get copyWith => throw _privateConstructorUsedError;
}
