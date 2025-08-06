import 'package:actiday/framework/model/categories_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final categoryController = ChangeNotifierProvider((ref) => CategoryController()); // category controller

class CategoryController extends ChangeNotifier {
  List<CategoryModel> categoryList = [ //category list
    // title and image
    CategoryModel('Fitness', 'assets/images/fitness_girl.png'),
    CategoryModel('Spa', 'assets/images/spa.png'),
  ];
}


