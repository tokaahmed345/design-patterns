# Factory Method Pattern

## Problem

Imagine you have an application that sends different types of notifications:

* Email Notification
* SMS Notification
* Push Notification

If we create the objects directly using `if/else` statements, the code might look like this:

```dart
if (type == 'email') {
  notification = EmailNotification();
} else if (type == 'sms') {
  notification = SmsNotification();
}
```

The problem is that this object-creation logic may be repeated in many places throughout the application.

This causes several issues:

* The same `if/else` logic may be duplicated in multiple places.
* If we add a new notification type, such as `WhatsAppNotification`, we have to modify all the places that contain this logic.
* The code becomes harder to maintain and extend.
* It violates the **Open/Closed Principle (OCP)**: software entities should be **open for extension but closed for modification**.

---

## Solution

The **Factory Method Pattern** solves this problem by moving the object-creation logic into a dedicated method called a **Factory Method**.

We create an **abstract class** that defines a method called:

```dart
createNotification()
```

Then, each subclass overrides this method and decides which notification object should be created.

The code that uses the notification doesn't need to know whether it is an Email, SMS, or Push Notification.

It simply calls the factory method, and the subclass decides which object to create.

---

## Result

Now, when we want to add a new notification type, such as `WhatsAppNotification`, we can create a new subclass without changing the existing notification-creation logic.

This makes the code:

* Easier to maintain.
* Easier to extend.
* Less dependent on concrete classes.
* More compliant with the **Open/Closed Principle**.
