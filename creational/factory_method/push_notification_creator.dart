
import 'factory_method.dart';
import 'notification_creator.dart';

class PushNotificationCreator extends NotificationCreator {
  @override
  Notification creator() => PushNotification();

}