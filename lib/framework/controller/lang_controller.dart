import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:easy_localization/easy_localization.dart';

final languageController = ChangeNotifierProvider(
  (ref) => LanguageController(),
);

class LanguageController extends ChangeNotifier {
  void languageToggle(String? dropDownValue, BuildContext context) async {
    if (dropDownValue.toString() == 'Arabic') {
      await context.setLocale(Locale('ar'));
    } else if(dropDownValue.toString() == 'French'){
      await context.setLocale(Locale('fr'));
    } else{
      await context.setLocale(Locale('en'));

    }
    notifyListeners();
  }
}
