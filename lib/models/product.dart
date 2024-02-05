//import 'package:flutter/material.dart';

class Product {
  const Product({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.category,
    required this.description,
    required this.nutrients,
    required this.isVitaminC,
    required this.isVitaminK,
    required this.isVitaminE,
    required this.isVitaminA,
    required this.isFolates,
    required this.isPotassium,
    required this.isCalcium,
    required this.isMagnesium,
    required this.isIron,
    required this.isProteinSource,
  });

  final String id;
  final String title;
  final String category;
  final String imageUrl;
  final String description;
  final String nutrients;
  final bool isVitaminC;
  final bool isVitaminK;
  final bool isVitaminE;
  final bool isVitaminA;
  final bool isFolates; //foliany kwas foliowy
  final bool isPotassium; //potas
  final bool isCalcium; //wapń
  final bool isMagnesium; //manges
  final bool isIron; //żelazo
  final bool isProteinSource; //źródło białka
}
