import 'payment_processor.dart';

class LocalPaymentProcessor  implements PaymentProcessor{
  @override
  void pay(double amount) {

    print('💳 local payment $amount pound');
  }
}