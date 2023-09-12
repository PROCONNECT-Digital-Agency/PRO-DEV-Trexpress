import '../models/models.dart';
import '../core/handlers/handlers.dart';

abstract class PaymentsRepository {
  Future<ApiResult<AtbPaymentResponse>> getAtbPayment(int? transactionId);

  Future<ApiResult<PaymentsResponse>> getPayments();

  Future<ApiResult<SingleOrderResponse>> createTransaction({
    required int orderId,
    required int paymentId,
  });
}
