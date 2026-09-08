import 'creational/singleton/singleton.dart';
import 'creational/factory_method/email_notification_creator.dart';
import 'creational/factory_method/notification_creator.dart';
import 'creational/factory_method/sms_notification_creator.dart';
import 'structural/adapter/stripe_payment_adapter.dart';
import 'structural/adapter/local_payment_processor.dart';
import 'structural/adapter/payment_processor.dart';
import 'structural/adapter/stripe_sdk.dart';
import 'structural/decorator/caramel_decorator.dart';
import 'structural/decorator/chocolate_decorator.dart';
import 'structural/decorator/simple_coffee.dart';
import 'structural/decorator/milk_decorator.dart';

void main() {
  final config1 = AppConfig();
  final config2 = AppConfig();

  config1.isDarkMode = true;

  print(config2.isDarkMode);
  print(identical(config1, config2));
  ///////////////////
  NotificationCreator creator = EmailNotificationCreator();
  creator.notifyUser('your account activated');

  creator = SmsNotificationCreator();
  creator.notifyUser('validation code is 1234');
  ///////////////////////////////
  PaymentProcessor localPayment = LocalPaymentProcessor();
  localPayment.pay(100);

  PaymentProcessor stripePayment = StripePaymentAdapter(StripeSDK());
  stripePayment.pay(100);
  ///////////////////////////////////
  
Coffee coffee = SimpleCoffee();
  print('${coffee.getDescription()} = ${coffee.getCost()} pound');

  coffee = MilkDecorator(SimpleCoffee());
  print('${coffee.getDescription()} = ${coffee.getCost()} pound');

  
  coffee = ChocolateDecorator(
    CaramelDecorator(
      MilkDecorator(
        SimpleCoffee(),
      ),
    ),
  );
  print('${coffee.getDescription()} = ${coffee.getCost()} pound');



}
