
import 'payment_processor.dart';
import 'stripe_sdk.dart';

class StripePaymentAdapter implements PaymentProcessor {
  final StripeSDK _stripeSdk;

  StripePaymentAdapter(this._stripeSdk);

  @override
  void pay(double amount) {
    final amountInCents = (amount * 100).toInt();
    _stripeSdk.makeTransaction(amountInCents, 'USD');
  }
}
