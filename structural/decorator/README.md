# Decorator Pattern

## The Problem

Imagine you are building a **Coffee Shop** application, and you have a `Coffee` class that calculates the coffee price.

Now, you want to allow customers to add different extras, such as:

* Milk
* Caramel
* Chocolate

Each extra has its own additional price.

The problem is that the customer can choose **any combination**, for example:

* Coffee only
* Coffee + Milk
* Coffee + Milk + Caramel
* Coffee + Chocolate
* Coffee + Milk + Chocolate + Caramel
* And so on...

If you try to create a separate class for every possible combination, you would end up with classes like:

`CoffeeWithMilk`, `CoffeeWithMilkAndCaramel`, `CoffeeWithChocolate`, etc.

As the number of extras increases, the number of possible combinations grows rapidly. This leads to having **dozens or even hundreds of classes**, making the code difficult to maintain and extend.

This problem is known as **Class Explosion** and makes the system **unmaintainable**.

---

## The Solution

Instead of creating a separate class for every possible combination, we make each extra, such as `Milk` or `Caramel`, a **Decorator** that wraps around the basic `Coffee` object and adds something to it.

Each decorator can take any `Coffee` object — whether it is the basic coffee or a coffee already wrapped by another decorator — and add its own behavior or additional price.

For example:

```text
Coffee
   ↓
Milk
   ↓
Caramel
```

Here:

* `Coffee` is the basic component.
* `Milk` adds the price of milk.
* `Caramel` adds the price of caramel.

This allows us to combine different extras **dynamically at runtime** without creating a new class for every possible combination.

So we can easily create:

```text
Coffee
Coffee + Milk
Coffee + Milk + Caramel
Coffee + Chocolate
Coffee + Milk + Chocolate + Caramel
```

All without creating a separate class for each combination.
