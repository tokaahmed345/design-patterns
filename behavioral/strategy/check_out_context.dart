
import 'payment_strategy.dart';

class CheckoutContext {
  PaymentStrategy _strategy;

  CheckoutContext(this._strategy);

  void setStrategy(PaymentStrategy strategy) {
    _strategy = strategy;
  }

  void checkout(double amount) {
    _strategy.pay(amount);
  }
}
