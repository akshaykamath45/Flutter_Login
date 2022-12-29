import 'package:flutter/material.dart';

import '../../data/pizza_dummy_data.dart';
import 'menu_card.dart';
class MenuGrid extends StatelessWidget {
  const MenuGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: ((context, index) {
          return MenuCard(
              name: pizzaData[index].name,
              description: pizzaData[index].description,
              price: pizzaData[index].price,
              img_path: "assets/images/pizza2.jpg");
        }),
        itemCount: pizzaData.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.64,
            mainAxisSpacing: 4,
            crossAxisSpacing: 6,
            crossAxisCount: 2),
      ),
    );
  }
}
