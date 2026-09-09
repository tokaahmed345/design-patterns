
import 'payment_strategy.dart';

class CashOnDeliveryStrategy implements PaymentStrategy {
  @override
  void pay(double amount) {
print('💵 \$$amount will be collected as cash on delivery');
  }
}