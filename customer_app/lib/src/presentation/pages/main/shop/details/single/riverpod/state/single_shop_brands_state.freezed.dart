// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'single_shop_brands_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SingleShopBrandsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<BrandData> get brands => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SingleShopBrandsStateCopyWith<SingleShopBrandsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleShopBrandsStateCopyWith<$Res> {
  factory $SingleShopBrandsStateCopyWith(SingleShopBrandsState value,
          $Res Function(SingleShopBrandsState) then) =
      _$SingleShopBrandsStateCopyWithImpl<$Res, SingleShopBrandsState>;
  @useResult
  $Res call({bool isLoading, List<BrandData> brands});
}

/// @nodoc
class _$SingleShopBrandsStateCopyWithImpl<$Res,
        $Val extends SingleShopBrandsState>
    implements $SingleShopBrandsStateCopyWith<$Res> {
  _$SingleShopBrandsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? brands = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      brands: null == brands
          ? _value.brands
          : brands // ignore: cast_nullable_to_non_nullable
              as List<BrandData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SingleShopBrandsStateCopyWith<$Res>
    implements $SingleShopBrandsStateCopyWith<$Res> {
  factory _$$_SingleShopBrandsStateCopyWith(_$_SingleShopBrandsState value,
          $Res Function(_$_SingleShopBrandsState) then) =
      __$$_SingleShopBrandsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<BrandData> brands});
}

/// @nodoc
class __$$_SingleShopBrandsStateCopyWithImpl<$Res>
    extends _$SingleShopBrandsStateCopyWithImpl<$Res, _$_SingleShopBrandsState>
    implements _$$_SingleShopBrandsStateCopyWith<$Res> {
  __$$_SingleShopBrandsStateCopyWithImpl(_$_SingleShopBrandsState _value,
      $Res Function(_$_SingleShopBrandsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? brands = null,
  }) {
    return _then(_$_SingleShopBrandsState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      brands: null == brands
          ? _value._brands
          : brands // ignore: cast_nullable_to_non_nullable
              as List<BrandData>,
    ));
  }
}

/// @nodoc

class _$_SingleShopBrandsState extends _SingleShopBrandsState {
  const _$_SingleShopBrandsState(
      {this.isLoading = false, final List<BrandData> brands = const []})
      : _brands = brands,
        super._();

  @override
  @JsonKey()
  final bool isLoading;
  final List<BrandData> _brands;
  @override
  @JsonKey()
  List<BrandData> get brands {
    if (_brands is EqualUnmodifiableListView) return _brands;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_brands);
  }

  @override
  String toString() {
    return 'SingleShopBrandsState(isLoading: $isLoading, brands: $brands)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SingleShopBrandsState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._brands, _brands));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, const DeepCollectionEquality().hash(_brands));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SingleShopBrandsStateCopyWith<_$_SingleShopBrandsState> get copyWith =>
      __$$_SingleShopBrandsStateCopyWithImpl<_$_SingleShopBrandsState>(
          this, _$identity);
}

abstract class _SingleShopBrandsState extends SingleShopBrandsState {
  const factory _SingleShopBrandsState(
      {final bool isLoading,
      final List<BrandData> brands}) = _$_SingleShopBrandsState;
  const _SingleShopBrandsState._() : super._();

  @override
  bool get isLoading;
  @override
  List<BrandData> get brands;
  @override
  @JsonKey(ignore: true)
  _$$_SingleShopBrandsStateCopyWith<_$_SingleShopBrandsState> get copyWith =>
      throw _privateConstructorUsedError;
}
