import 'creational/creational/singleton/singleton.dart';
import 'creational/creational/factory_method/email_notification_creator.dart';
import 'creational/creational/factory_method/notification_creator.dart';
import 'creational/creational/factory_method/sms_notification_creator.dart';
import 'structural/adapter/structural/adapter/stripe_payment_adapter.dart';
import 'structural/adapter/structural/adapter/local_payment_processor.dart';
import 'structural/adapter/structural/adapter/payment_processor.dart';
import 'structural/adapter/structural/adapter/stripe_sdk.dart';

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
}
