import 'package:flutter/material.dart';
import 'package:smokey_dough/data/pizza_dummy_data.dart';
import 'package:smokey_dough/views/widgets/pizza_card.dart';
import '../../constants/strings.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appName),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(
        child: Center(
          child: ListView.builder(
            itemBuilder: ((context, index) {
              return PizzaCardWidget(
                name: pizzaData[index].name,
                description: pizzaData[index].description,
                price: pizzaData[index].price,
              );
            }),
            itemCount: pizzaData.length,
          ),
        ),
      ),
    );
  }
}
