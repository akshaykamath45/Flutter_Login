import 'package:smokey_dough/models/pizza.dart';

List<PizzaModel> pizzaData = [
  PizzaModel(
    id: '1',
    name: 'Pepperoni',
    description: 'Pepperoni, mozzarella, tomato sauce',
    ingredients: ['Pepperoni', 'Mozzarella', 'Tomato Sauce'],
    images: ['assets/images/pizza1.png', 'assets/images/pizza2.png'],
    quantity: 1,
    price: 10,
  ),
  PizzaModel(
    id: '2',
    name: 'Hawaiian',
    description: 'Ham, pineapple, mozzarella, tomato sauce',
    ingredients: ['Ham', 'Pineapple', 'Mozzarella', 'Tomato Sauce'],
    images: ['assets/images/pizza1.png', 'assets/images/pizza2.png'],
    quantity: 1,
    price: 10,
  ),
  PizzaModel(
    id: '3',
    name: 'Meat Lovers',
    description: 'Pepperoni, ham, sausage, bacon, mozzarella, tomato sauce',
    ingredients: [
      'Pepperoni',
      'Ham',
      'Sausage',
      'Bacon',
      'Mozzarella',
      'Tomato Sauce'
    ],
    images: ['assets/images/pizza1.png', 'assets/images/pizza2.png'],
    quantity: 1,
    price: 10,
  ),
];
