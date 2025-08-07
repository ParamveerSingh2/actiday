import 'package:actiday/framework/model/top_classes_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final topClassController = ChangeNotifierProvider(
        (ref) => TopClassController()
  //top classes controller
,);

class TopClassController extends ChangeNotifier {
  // title , subtitle , location, image
  List<TopClassesModel> topClassesList = [
    TopClassesModel(
      'Weight Lift',
      'Lady Fit',
      'Arabian Gulf st 2',
      'assets/images/weight_lift.png',
      false
    ),
    TopClassesModel(
      'Weight Lift',
      'Bamboo Spa',
      'Arabian Gulf st 2',
      'assets/images/back_massage.png',
      true
    ),
    TopClassesModel(
      'Weight Lift',
      'Bamboo Spa',
      'Arabian Gulf st 2',
      'assets/images/hand_massage.png',
        false
    ),
    TopClassesModel(
      'Weight Lift',
      'Blue Laggon',
      'Arabian Gulf st 2',
      'assets/images/hot_water.png',
        true
    ),
    TopClassesModel(
      'Weight Lift',
      'Blue Laggon',
      'Arabian Gulf st 2',
      'assets/images/hot_water_spa.png',
        false
    ),
    TopClassesModel(
      'Weight Lift',
      'Blue Laggon',
      'Arabian Gulf st 2',
      'assets/images/hotwater.png',
        false
    ),
  ];
  // like and unlike toggle button
  void toggleLike(int index){
    topClassesList[index].isLiked = !topClassesList[index].isLiked;
    notifyListeners();
  }
}



