import 'package:actiday/framework/model/gym_details_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//our service section controller
final ourServicesController = ChangeNotifierProvider(
  (ref) => OurServicesController(),
);

class OurServicesController extends ChangeNotifier {
  // image , title , description, and time
  List<OurServices> ourServicesList = [
    OurServices(
      'assets/images/meditation.png',
      'Yoga (Meditation)',
      'Yoga is a Practice that connects the Body, Breath and Mind. It uses physical postures, Breathing Exercises',
      '20 Min',
      15,
    ),
    OurServices(
      'assets/images/yoga.png',
      'Cardio',
      'Yoga is a Practice that connects the Body, Breath and Mind. It uses physical postures, Breathing Exercises',
      '20 Min',
      15,
    ),
    OurServices(
      'assets/images/gym_gym.png',
      'Work Out (Heavy Reps)',
      'Yoga is a Practice that connects the Body, Breath and Mind. It uses physical postures, Breathing Exercises',
      '20 Min',
      15,
    ),
  ];
}
