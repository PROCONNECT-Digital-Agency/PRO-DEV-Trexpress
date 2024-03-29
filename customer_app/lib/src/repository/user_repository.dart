import '../models/models.dart';
import '../core/handlers/handlers.dart';

abstract class UserRepository {
  Future<ApiResult<ProfileResponse>> getProfileDetails();

  Future<ApiResult<dynamic>> deleteAccount();

  Future<ApiResult<ProfileResponse>> updateGeneralInfo({
    required String firstName,
    required String lastName,
    String? birthdate,
    String? gender,
    String? phone,
    String? email,
    String? password,
    String? passwordConfirm,
  });

  Future<ApiResult<ProfileResponse>> updateProfileImage({
    required String firstName,
    required String imageUrl,
  });

  Future<ApiResult<ProfileResponse>> updatePassword({
    required String password,
    required String passwordConfirmation,
  });

  Future<ApiResult<WalletHistoriesResponse>> getWalletHistories(int page);

  Future<ApiResult<void>> updateFirebaseToken(String? token);
}
