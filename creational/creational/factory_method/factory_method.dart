abstract class Notification {
  void send(String message);
}

class EmailNotification implements Notification {
  @override
  void send(String message) {
    print('📧 Sending Email: $message');
  }
}

class SmsNotification implements Notification {
  @override
  void send(String message) {
    print('📱 Sending SMS: $message');
  }
}

class PushNotification implements Notification {
  @override
  void send(String message) {
    print('🔔 Sending Push Notification: $message');
  }
}


