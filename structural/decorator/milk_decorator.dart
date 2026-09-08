import 'coffee_decorator.dart';

 class MilkDecorator  extends CoffeeDecorator{
  MilkDecorator(super.coffee);
  @override
  String getDescription() => '${coffee.getDescription()} + Milk';

  @override
  double getCost() => coffee.getCost() + 3.0;

}