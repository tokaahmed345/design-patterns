import 'creational/creational/singleton/singleton.dart';
import 'creational/factory_method/email_notification_creator.dart';
import 'creational/factory_method/notification_creator.dart';
import 'creational/factory_method/sms_notification_creator.dart';

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

}