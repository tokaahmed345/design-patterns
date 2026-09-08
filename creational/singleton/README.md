# Singleton Pattern

## Problem

Imagine you have a class like `AppConfig` that holds application settings such as the API URL, dark mode configuration, and other global settings.

If the class is a normal class, every time someone creates:

```dart
AppConfig()
```

a completely new instance will be created.

This can cause several problems:

* You may end up with multiple copies of the same configuration in different parts of the application.
* If you change a setting in one instance, the other instances will not be affected.
* It can lead to unnecessary resource usage, especially when dealing with resource-heavy objects such as database connections.

## Solution

The **Singleton Pattern** ensures that a class has only **one instance** throughout the application's lifecycle.

We can achieve this by:

1. Making the constructor **private** by adding `_` before its name, preventing other parts of the code from creating `AppConfig()` directly.

2. Creating a `static` variable that holds the single instance of the class.

3. Providing a **factory constructor** that returns the same instance every time the class is requested.

### Result

No matter how many times you call:

```dart
AppConfig()
```

you will always get the **exact same object instance**.
