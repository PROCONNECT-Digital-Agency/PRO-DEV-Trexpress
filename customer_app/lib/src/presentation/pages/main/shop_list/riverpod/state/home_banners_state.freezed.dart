// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_banners_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeBannersState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<BannerData> get banners => throw _privateConstructorUsedError;
  int get bannerIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeBannersStateCopyWith<HomeBannersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeBannersStateCopyWith<$Res> {
  factory $HomeBannersStateCopyWith(
          HomeBannersState value, $Res Function(HomeBannersState) then) =
      _$HomeBannersStateCopyWithImpl<$Res, HomeBannersState>;
  @useResult
  $Res call({bool isLoading, List<BannerData> banners, int bannerIndex});
}

/// @nodoc
class _$HomeBannersStateCopyWithImpl<$Res, $Val extends HomeBannersState>
    implements $HomeBannersStateCopyWith<$Res> {
  _$HomeBannersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? banners = null,
    Object? bannerIndex = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      banners: null == banners
          ? _value.banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<BannerData>,
      bannerIndex: null == bannerIndex
          ? _value.bannerIndex
          : bannerIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeBannersStateCopyWith<$Res>
    implements $HomeBannersStateCopyWith<$Res> {
  factory _$$_HomeBannersStateCopyWith(
          _$_HomeBannersState value, $Res Function(_$_HomeBannersState) then) =
      __$$_HomeBannersStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<BannerData> banners, int bannerIndex});
}

/// @nodoc
class __$$_HomeBannersStateCopyWithImpl<$Res>
    extends _$HomeBannersStateCopyWithImpl<$Res, _$_HomeBannersState>
    implements _$$_HomeBannersStateCopyWith<$Res> {
  __$$_HomeBannersStateCopyWithImpl(
      _$_HomeBannersState _value, $Res Function(_$_HomeBannersState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? banners = null,
    Object? bannerIndex = null,
  }) {
    return _then(_$_HomeBannersState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      banners: null == banners
          ? _value._banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<BannerData>,
      bannerIndex: null == bannerIndex
          ? _value.bannerIndex
          : bannerIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_HomeBannersState extends _HomeBannersState {
  const _$_HomeBannersState(
      {this.isLoading = false,
      final List<BannerData> banners = const [],
      this.bannerIndex = 0})
      : _banners = banners,
        super._();

  @override
  @JsonKey()
  final bool isLoading;
  final List<BannerData> _banners;
  @override
  @JsonKey()
  List<BannerData> get banners {
    if (_banners is EqualUnmodifiableListView) return _banners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_banners);
  }

  @override
  @JsonKey()
  final int bannerIndex;

  @override
  String toString() {
    return 'HomeBannersState(isLoading: $isLoading, banners: $banners, bannerIndex: $bannerIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeBannersState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._banners, _banners) &&
            (identical(other.bannerIndex, bannerIndex) ||
                other.bannerIndex == bannerIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_banners), bannerIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeBannersStateCopyWith<_$_HomeBannersState> get copyWith =>
      __$$_HomeBannersStateCopyWithImpl<_$_HomeBannersState>(this, _$identity);
}

abstract class _HomeBannersState extends HomeBannersState {
  const factory _HomeBannersState(
      {final bool isLoading,
      final List<BannerData> banners,
      final int bannerIndex}) = _$_HomeBannersState;
  const _HomeBannersState._() : super._();

  @override
  bool get isLoading;
  @override
  List<BannerData> get banners;
  @override
  int get bannerIndex;
  @override
  @JsonKey(ignore: true)
  _$$_HomeBannersStateCopyWith<_$_HomeBannersState> get copyWith =>
      throw _privateConstructorUsedError;
}
