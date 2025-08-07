import 'package:easy_localization/easy_localization.dart';

extension StringExtension on String{

  get localized => this.tr();
}