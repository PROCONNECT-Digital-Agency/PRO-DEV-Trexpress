// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'atb_payment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AtbPaymentState {
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AtbPaymentStateCopyWith<AtbPaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AtbPaymentStateCopyWith<$Res> {
  factory $AtbPaymentStateCopyWith(
          AtbPaymentState value, $Res Function(AtbPaymentState) then) =
      _$AtbPaymentStateCopyWithImpl<$Res, AtbPaymentState>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class _$AtbPaymentStateCopyWithImpl<$Res, $Val extends AtbPaymentState>
    implements $AtbPaymentStateCopyWith<$Res> {
  _$AtbPaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AtbPaymentStateCopyWith<$Res>
    implements $AtbPaymentStateCopyWith<$Res> {
  factory _$$_AtbPaymentStateCopyWith(
          _$_AtbPaymentState value, $Res Function(_$_AtbPaymentState) then) =
      __$$_AtbPaymentStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$_AtbPaymentStateCopyWithImpl<$Res>
    extends _$AtbPaymentStateCopyWithImpl<$Res, _$_AtbPaymentState>
    implements _$$_AtbPaymentStateCopyWith<$Res> {
  __$$_AtbPaymentStateCopyWithImpl(
      _$_AtbPaymentState _value, $Res Function(_$_AtbPaymentState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$_AtbPaymentState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AtbPaymentState extends _AtbPaymentState {
  const _$_AtbPaymentState({this.isLoading = false}) : super._();

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'AtbPaymentState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AtbPaymentState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AtbPaymentStateCopyWith<_$_AtbPaymentState> get copyWith =>
      __$$_AtbPaymentStateCopyWithImpl<_$_AtbPaymentState>(this, _$identity);
}

abstract class _AtbPaymentState extends AtbPaymentState {
  const factory _AtbPaymentState({final bool isLoading}) = _$_AtbPaymentState;
  const _AtbPaymentState._() : super._();

  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_AtbPaymentStateCopyWith<_$_AtbPaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}
