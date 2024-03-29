import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../../core/constants/constants.dart';
import '../../../../../../../core/routes/app_router.gr.dart';
import '../../../../../../../core/utils/utils.dart';
import '../../../../../../../models/models.dart';
import '../../../../../../../repository/repository.dart';
import '../../../riverpod/notifier/reset_password_notifier.dart';
import '../state/reset_confirmation_state.dart';

class ResetConfirmationNotifier extends StateNotifier<ResetConfirmationState> {
  final AuthRepository _authRepository;
  final CurrenciesRepository _currenciesRepository;
  final UserRepository _userRepository;
  Timer? _timer;
  int _initialTime = 120;

  ResetConfirmationNotifier(
    this._authRepository,
    this._currenciesRepository,
    this._userRepository,
  ) : super(const ResetConfirmationState());

  void setCode(String? code) {
    state = state.copyWith(
      confirmCode: code?.trim() ?? '',
      isConfirmCodeError: false,
    );
  }

  Future<void> resendConfirmation(
    BuildContext context,
    String phone,
    ResetPasswordNotifier resetPasswordNotifier,
  ) async {
    final connected = await AppConnectivity.connectivity();
    if (connected) {
      state = state.copyWith(isResending: true);
      // ignore: use_build_context_synchronously
      final response = await _authRepository.sendOtp(phone: phone.trim(), context: context);
      response.when(
        success: (data) async {
          // enterPhoneNotifier.setVerifyId(data.data?.verifyId);
          state = state.copyWith(isResending: false);
          startTimer();
        },
        failure: (failure) {
          state = state.copyWith(isResending: false);
          AppHelpers.showCheckFlash(
            context,
            AppHelpers.getTranslation(TrKeys.smsDidntSend),
          );
          debugPrint('==> send otp failure: $failure');
        },
      );
    } else {
      if (mounted) {
        AppHelpers.showCheckFlash(
          context,
          AppHelpers.getTranslation(TrKeys.checkYourNetworkConnection),
        );
      }
    }
  }

  void startTimer() {
    if (_timer != null) {
      _initialTime = 120;
      _timer?.cancel();
    }
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (_initialTime < 1) {
          _timer?.cancel();
          state = state.copyWith(isTimeExpired: true);
        } else {
          _initialTime--;
          state = state.copyWith(
            isTimeExpired: false,
            timerText: formatHHMMSS(_initialTime),
          );
        }
      },
    );
  }

  String formatHHMMSS(int seconds) {
    seconds = (seconds % 3600).truncate();
    int minutes = (seconds / 60).truncate();
    String minutesStr = (minutes).toString().padLeft(2, '0');
    String secondsStr = (seconds % 60).toString().padLeft(2, '0');
    return "$minutesStr:$secondsStr";
  }

  Future<void> confirmCode(BuildContext context, String verifyId) async {
    final connected = await AppConnectivity.connectivity();
    if (connected) {
      state = state.copyWith(isLoading: true);
      final response = await _authRepository.verifyPhone(
        verifyCode: state.confirmCode.trim(),
      );
      response.when(
        success: (data) {
          LocalStorage.instance.setToken(data);
          // LocalStorage.instance.setFirstName(data.data?.user?.firstname);
          // LocalStorage.instance.setLastName(data.data?.user?.lastname);
          // LocalStorage.instance.setProfileImage(data.data?.user?.img);
          fetchCurrencies(context);
          getProfileDetails(context);
          state = state.copyWith(isLoading: false);
          context.pushRoute(const NewPasswordRoute());
        },
        failure: (failure) {
          state = state.copyWith(isLoading: false, isConfirmCodeError: true);
          debugPrint('==> confirm code failure: $failure');
        },
      );
    } else {
      if (mounted) {
        AppHelpers.showCheckFlash(
          context,
          AppHelpers.getTranslation(TrKeys.checkYourNetworkConnection),
        );
      }
    }
  }

  Future<void> fetchCurrencies(BuildContext context) async {
    final connected = await AppConnectivity.connectivity();
    if (connected) {
      state = state.copyWith(isLoading: true);
      final response = await _currenciesRepository.getCurrencies();
      response.when(
        success: (data) async {
          int defaultCurrencyIndex = 0;
          final List<CurrencyData> currencies = data.data ?? [];
          for (int i = 0; i < currencies.length; i++) {
            if (currencies[i].isDefault ?? false) {
              defaultCurrencyIndex = i;
              break;
            }
          }
          LocalStorage.instance
              .setSelectedCurrency(currencies[defaultCurrencyIndex]);
          state = state.copyWith(isLoading: false);
        },
        failure: (failure) {
          state = state.copyWith(isLoading: false);
          debugPrint('==> get currency failure: $failure');
        },
      );
    } else {
      if (mounted) {
        AppHelpers.showCheckFlash(
          context,
          AppHelpers.getTranslation(TrKeys.checkYourNetworkConnection),
        );
      }
    }
  }

  Future<void> getProfileDetails(BuildContext context) async {
    final connected = await AppConnectivity.connectivity();
    if (connected) {
      state = state.copyWith(isLoading: true);
      final response = await _userRepository.getProfileDetails();
      response.when(
        success: (data) async {
          LocalStorage.instance.setWalletData(data.data?.wallet);
          LocalStorage.instance.setUser(data.data);
          state = state.copyWith(isLoading: false);
        },
        failure: (failure) {
          state = state.copyWith(isLoading: false);
          debugPrint('==> get profile details failure: $failure');
        },
      );
    } else {
      if (mounted) {
        AppHelpers.showCheckFlash(
          context,
          AppHelpers.getTranslation(TrKeys.checkYourNetworkConnection),
        );
      }
    }
  }
}
