import 'dart:ui';

import 'package:get/get.dart';

import '../service/services.dart';
import 'translations.dart';

class ChangeLanguageController extends GetxController {
  late Locale language;
  final String key = 'language';
  MyService myService = Get.find();

  changeLanguage() {
    String? sharedPrefLang = myService.sharedPreferences.getString(key);
    if (sharedPrefLang == AppStrings.englishCode) {
      language = const Locale(AppStrings.arabicCode);
      myService.sharedPreferences.setString(key, AppStrings.arabicCode);
      Get.updateLocale(language);
    } else {
      language = const Locale(AppStrings.englishCode);
      myService.sharedPreferences.setString(key, AppStrings.englishCode);
      Get.updateLocale(language);
    }
  }

  @override
  void onInit() {
    super.onInit();
    String? sharedPrefLang = myService.sharedPreferences.getString(key);
    language = const Locale(AppStrings.arabicCode);
    if (sharedPrefLang == AppStrings.arabicCode) {
      language = const Locale(AppStrings.arabicCode);
    } else if (sharedPrefLang == AppStrings.englishCode) {
      language = const Locale(AppStrings.englishCode);
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
  }
}
