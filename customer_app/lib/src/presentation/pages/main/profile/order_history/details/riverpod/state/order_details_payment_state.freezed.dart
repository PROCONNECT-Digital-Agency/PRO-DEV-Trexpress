// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_details_payment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderDetailsPaymentState {
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderDetailsPaymentStateCopyWith<OrderDetailsPaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailsPaymentStateCopyWith<$Res> {
  factory $OrderDetailsPaymentStateCopyWith(OrderDetailsPaymentState value,
          $Res Function(OrderDetailsPaymentState) then) =
      _$OrderDetailsPaymentStateCopyWithImpl<$Res, OrderDetailsPaymentState>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class _$OrderDetailsPaymentStateCopyWithImpl<$Res,
        $Val extends OrderDetailsPaymentState>
    implements $OrderDetailsPaymentStateCopyWith<$Res> {
  _$OrderDetailsPaymentStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_OrderDetailsPaymentStateeCopyWith<$Res>
    implements $OrderDetailsPaymentStateCopyWith<$Res> {
  factory _$$_OrderDetailsPaymentStateeCopyWith(
          _$_OrderDetailsPaymentStatee value,
          $Res Function(_$_OrderDetailsPaymentStatee) then) =
      __$$_OrderDetailsPaymentStateeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$_OrderDetailsPaymentStateeCopyWithImpl<$Res>
    extends _$OrderDetailsPaymentStateCopyWithImpl<$Res,
        _$_OrderDetailsPaymentStatee>
    implements _$$_OrderDetailsPaymentStateeCopyWith<$Res> {
  __$$_OrderDetailsPaymentStateeCopyWithImpl(
      _$_OrderDetailsPaymentStatee _value,
      $Res Function(_$_OrderDetailsPaymentStatee) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$_OrderDetailsPaymentStatee(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_OrderDetailsPaymentStatee extends _OrderDetailsPaymentStatee {
  const _$_OrderDetailsPaymentStatee({this.isLoading = false}) : super._();

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'OrderDetailsPaymentState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderDetailsPaymentStatee &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderDetailsPaymentStateeCopyWith<_$_OrderDetailsPaymentStatee>
      get copyWith => __$$_OrderDetailsPaymentStateeCopyWithImpl<
          _$_OrderDetailsPaymentStatee>(this, _$identity);
}

abstract class _OrderDetailsPaymentStatee extends OrderDetailsPaymentState {
  const factory _OrderDetailsPaymentStatee({final bool isLoading}) =
      _$_OrderDetailsPaymentStatee;
  const _OrderDetailsPaymentStatee._() : super._();

  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_OrderDetailsPaymentStateeCopyWith<_$_OrderDetailsPaymentStatee>
      get copyWith => throw _privateConstructorUsedError;
}
