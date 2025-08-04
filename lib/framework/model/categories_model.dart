import 'package:flutter/material.dart';

class CategoriesModel {
  final String title;
  final String svg;

  CategoriesModel(this.title, this.svg);
  List<CategoriesModel> categoryList = [
    CategoriesModel('Fitness', 'assets/images/fitness_girl.png'),
    CategoriesModel('Spa', 'assets/images/spa.png'),
  ];
}