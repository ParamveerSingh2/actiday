import 'package:actiday/framework/model/categories_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final categoryController = ChangeNotifierProvider((ref) => CategoryController());

class CategoryController extends ChangeNotifier {
List<CategoriesModel> categoryList = [];
}


