// ignore: depend_on_referenced_packages
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:local_notifier/local_notifier.dart';
import 'package:month_year_picker/month_year_picker.dart';
import 'package:window_manager/window_manager.dart';

import 'core/localization/change_language_controller.dart';
import 'libraries.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();
  await localNotifier.setup(
    appName: 'Unversity',
    shortcutPolicy: ShortcutPolicy.requireCreate,
  );
  await initialService();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
        DeviceOrientation.landscapeRight,
        DeviceOrientation.landscapeLeft,
      ],
    );

    final ChangeLanguageController languageController =
        Get.put(ChangeLanguageController());
    return GetMaterialApp(
      // localizationsDelegates: GlobalMaterialLocalizations.delegates,
      localizationsDelegates: const [
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        MonthYearPickerLocalizations.delegate,
      ],
      translations: MyTranslation(),
      locale: languageController.language,
      supportedLocales: const [Locale('ar'), Locale('en')],
      // locale: const Locale('ar'), //controller.language,
      debugShowCheckedModeBanner: false,
      title: 'University management system',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeController().getThemeMode,
      initialBinding: AppBindings(),
      getPages: getRoutes!,
    );
  }
}
