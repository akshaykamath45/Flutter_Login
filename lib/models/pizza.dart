import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class PizzaModel {
  final String id;
  final String name;
  final String description;
  final List ingredients;
  final List images;
  final int quantity;
  final int price;
  PizzaModel({
    required this.id,
    required this.name,
    required this.description,
    required this.ingredients,
    required this.images,
    required this.quantity,
    required this.price,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'ingredients': ingredients,
      'images': images,
      'quantity': quantity,
      'price': price,
    };
  }

  factory PizzaModel.fromMap(Map<String, dynamic> map) {
    return PizzaModel(
      id: map['id'] as String,
      name: map['name'] as String,
      description: map['description'] as String,
      ingredients: map['ingredients'] as List,
      images: map['images'] as List,
      quantity: map['quantity'] as int,
      price: map['price'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory PizzaModel.fromJson(String source) =>
      PizzaModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'PizzaModel(id: $id, name: $name, description: $description, ingredients: $ingredients, images: $images, quantity: $quantity, price: $price )';
  }

  PizzaModel copyWith({
    String? id,
    String? name,
    String? description,
    List? ingredients,
    List? images,
    int? quantity,
    int? price,
  }) {
    return PizzaModel(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      ingredients: ingredients ?? this.ingredients,
      images: images ?? this.images,
      quantity: quantity ?? this.quantity,
      price: price ?? this.price,
    );
  }
}
