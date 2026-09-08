abstract class Coffee {
  String getDescription();
  double getCost();
}

class SimpleCoffee implements Coffee {
  @override
  String getDescription() => 'SimpleCoffee';

  @override
  double getCost() => 10.0;
}

