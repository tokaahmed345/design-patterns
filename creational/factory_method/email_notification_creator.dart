import 'factory_method.dart';
import 'notification_creator.dart';

class EmailNotificationCreator extends NotificationCreator {
  @override
  Notification creator() => EmailNotification();
}
