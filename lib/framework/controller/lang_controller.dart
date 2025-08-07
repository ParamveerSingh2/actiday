import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod/riverpod.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:actiday/framework/utils/extension/string_extension.dart';


final languageController = ChangeNotifierProvider((ref)=>LanguageController());

class LanguageController extends ChangeNotifier{
  void languageToggle(String? dropDownValue, BuildContext context){
    if (dropDownValue.toString() == 'Arabic') {
      context.setLocale(Locale('ar'));
    } else {
      context.setLocale(Locale('en'));
    }
  }


}