import 'coffee_decorator.dart';

class CaramelDecorator  extends CoffeeDecorator{
  CaramelDecorator(super.coffee);
  @override
  String getDescription() => '${coffee.getDescription()} + Caramel';

  @override
  double getCost() => coffee.getCost() + 5.0;

}