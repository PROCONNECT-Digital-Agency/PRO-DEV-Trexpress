import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_state.freezed.dart';

@freezed
class ResetPasswordState with _$ResetPasswordState {
  const factory ResetPasswordState({
    @Default(false) bool isLoading,
    @Default(false) bool isEmailError,
  }) = _ResetPasswordState;

  const ResetPasswordState._();
}
