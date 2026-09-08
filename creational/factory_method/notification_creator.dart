import 'factory_method.dart';

abstract class NotificationCreator {
  Notification creator();
  void notifyUser(String message ){
        final notification = creator();
    notification.send(message);
  }
}
