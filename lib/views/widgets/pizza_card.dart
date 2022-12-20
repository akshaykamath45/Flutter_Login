import 'package:flutter/material.dart';

class PizzaCardWidget extends StatelessWidget {
  final String name;
  final String description;
  final int price;
  const PizzaCardWidget(
      {super.key,
      required this.name,
      required this.description,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 2,
        borderRadius: BorderRadius.circular(10.0),
        child: ListTile(
          title: Text(name),
          subtitle: Text(description),
          trailing: Text('Rs.$price'),
        ),
      ),
    );
  }
}
