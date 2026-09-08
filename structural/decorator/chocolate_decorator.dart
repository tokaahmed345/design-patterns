

import 'coffee_decorator.dart';

class ChocolateDecorator extends CoffeeDecorator {
  ChocolateDecorator(super.coffee);

  @override
  String getDescription() => '${coffee.getDescription()} + Chocolate';

  @override
  double getCost() => coffee.getCost() + 4.0;
}