import 'package:actiday/framework/model/categories_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final categoryController = ChangeNotifierProvider(
  (ref) => CategoryController(),
); // category controller

class CategoryController extends ChangeNotifier {
  List<CategoryModel> categoryList = [
    //category list
    // title and image
    CategoryModel(
      'Fitness',
      'assets/images/fitness_girl.png',
      Colors.blueAccent,
    ),
    CategoryModel('Spa & Fitness', 'assets/images/spa.png', Colors.pinkAccent),
    CategoryModel(
      'Fitness',
      'assets/images/fitness_girl.png',
      Colors.blueAccent,
    ),
    CategoryModel('Spa & Fitness', 'assets/images/spa.png', Colors.pinkAccent),
  ];
}
