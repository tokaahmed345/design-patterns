
import 'payment_strategy.dart';

class CreditCardStrategy implements PaymentStrategy {
  final String cardNumber;
  CreditCardStrategy(this.cardNumber);

  @override
  void pay(double amount) {
    print('💳 Paid \$$amount using card ending in ${cardNumber.substring(cardNumber.length - 4)}');
  }
}