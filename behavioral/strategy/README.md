# Strategy Pattern

## Problem
Imagine you have a "Checkout" screen in your app, and the customer can pay using multiple methods: Credit Card, PayPal, Cash on Delivery. If you write all the logic inside one class with if/else:

```dart
void processPayment(String method, double amount) {
  if (method == 'credit_card') {
    // credit card logic
  } else if (method == 'paypal') {
    // PayPal logic
  } else if (method == 'cash') {
    // cash logic
  }
}
```

The problem:
- This class knows the details of every payment method, which violates the **Single Responsibility Principle**.
- Every time you add a new payment method, you have to modify this same class (breaking the **Open/Closed Principle**).
- It's hard to unit test each payment method on its own, since they're all tangled together inside one giant method.

## Solution
Separate each "method" (algorithm) into its own class that implements a shared interface. The main class (Context) takes any strategy it's given and uses it without knowing its internal details, and you can swap the strategy at runtime with no friction.

Result: each payment method lives in its own independent class, easy to add a new one or test one in isolation, and the Context never needs to change.