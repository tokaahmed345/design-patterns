# Adapter Pattern

## Problem

Imagine you are working on an application that has its own payment system. Your application works with a class called `PaymentProcessor`, which has a specific method:

```dart
pay(double amount)
```

Now, you want to add a ready-made **Third-party SDK**, such as Stripe. However, the SDK has a completely different interface:

```dart
makeTransaction(int amountInCents, String currency)
```

The problem is that your application expects:

```text
pay(double amount)
```

but the third-party SDK provides:

```text
makeTransaction(int amountInCents, String currency)
```

The two interfaces are **not compatible**.

You cannot modify the third-party SDK because you do not own its code. Also, you do not want to change your existing application code just to match the new SDK.

## Solution

We create an **Adapter** that stands between our application and the third-party SDK.

The Adapter implements the same interface that our application expects (`pay`), and internally, it calls the third-party SDK using the interface it requires (`makeTransaction`).

Our application does not know or care that a third-party SDK is being used. It simply calls `pay()` as usual.

## Result

We can use an external library or an old class with our existing code **without changing the existing application code**.

The Adapter simply translates the interface expected by our application into the interface provided by the third-party library.

Client: Our application
Target: PaymentProcessor
Adapter: StripeAdapter
Adaptee: StripePayment

### In Simple Words

> **Adapter Pattern allows incompatible classes to work together by converting the interface of one class into the interface expected by another class.**
