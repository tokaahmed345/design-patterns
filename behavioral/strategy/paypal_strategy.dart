
import 'payment_strategy.dart';

class PayPalStrategy implements PaymentStrategy {
  final String email;
  PayPalStrategy(this.email);

  @override
  void pay(double amount) {
print('🅿️ Paid \$$amount via PayPal account $email');
  }
}