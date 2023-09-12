// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_visible_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeVisibleState {
  bool get isVisible => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeVisibleStateCopyWith<HomeVisibleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeVisibleStateCopyWith<$Res> {
  factory $HomeVisibleStateCopyWith(
          HomeVisibleState value, $Res Function(HomeVisibleState) then) =
      _$HomeVisibleStateCopyWithImpl<$Res, HomeVisibleState>;
  @useResult
  $Res call({bool isVisible});
}

/// @nodoc
class _$HomeVisibleStateCopyWithImpl<$Res, $Val extends HomeVisibleState>
    implements $HomeVisibleStateCopyWith<$Res> {
  _$HomeVisibleStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_HomeVisibleStateCopyWith<$Res>
    implements $HomeVisibleStateCopyWith<$Res> {
  factory _$$_HomeVisibleStateCopyWith(
          _$_HomeVisibleState value, $Res Function(_$_HomeVisibleState) then) =
      __$$_HomeVisibleStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isVisible});
}

/// @nodoc
class __$$_HomeVisibleStateCopyWithImpl<$Res>
    extends _$HomeVisibleStateCopyWithImpl<$Res, _$_HomeVisibleState>
    implements _$$_HomeVisibleStateCopyWith<$Res> {
  __$$_HomeVisibleStateCopyWithImpl(
      _$_HomeVisibleState _value, $Res Function(_$_HomeVisibleState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isVisible = null,
  }) {
    return _then(_$_HomeVisibleState(
      isVisible: null == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HomeVisibleState extends _HomeVisibleState {
  const _$_HomeVisibleState({this.isVisible = false}) : super._();

  @override
  @JsonKey()
  final bool isVisible;

  @override
  String toString() {
    return 'HomeVisibleState(isVisible: $isVisible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeVisibleState &&
            (identical(other.isVisible, isVisible) ||
                other.isVisible == isVisible));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isVisible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeVisibleStateCopyWith<_$_HomeVisibleState> get copyWith =>
      __$$_HomeVisibleStateCopyWithImpl<_$_HomeVisibleState>(this, _$identity);
}

abstract class _HomeVisibleState extends HomeVisibleState {
  const factory _HomeVisibleState({final bool isVisible}) = _$_HomeVisibleState;
  const _HomeVisibleState._() : super._();

  @override
  bool get isVisible;
  @override
  @JsonKey(ignore: true)
  _$$_HomeVisibleStateCopyWith<_$_HomeVisibleState> get copyWith =>
      throw _privateConstructorUsedError;
}
