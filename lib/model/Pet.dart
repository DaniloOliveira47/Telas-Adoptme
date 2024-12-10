import 'package:flutter/foundation.dart';

class Pet {
  final String id;
  final String name;
  final int age;
  final String color;
  final List<String> images;
  final double weight;
  final String category;
  final String gender;
  final String breed;

  Pet({
    required this.id,
    required this.name,
    required this.age,
    required this.color,
    required this.images,
    required this.weight,
    required this.category,
    required this.gender,
    required this.breed
  });

  factory Pet.fromJson(Map<String, dynamic> json) {
    return Pet(
      id: json['_id'],
      name: json['name'],
      age: json['age'] ?? 0,
      color: json['color'],
      images: List<String>.from(json['images'] ?? []),
      weight: (json['weight'] ?? 0).toDouble(),
      category: json['category'],
      gender: json['gender'],
      breed: json['breed']
    );
  }
}
