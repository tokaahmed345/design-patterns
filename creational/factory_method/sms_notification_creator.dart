import 'factory_method.dart';
import 'notification_creator.dart';

class SmsNotificationCreator extends NotificationCreator {
  @override
  Notification creator() => SmsNotification();
}
