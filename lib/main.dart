import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:tabeldatafluttertemplate/src/app.dart';
import 'package:tabeldatafluttertemplate/src/injectors/injector.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  BlocSupervisor.delegate = await HydratedBlocDelegate.build();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  try {
    await setupLocator();
    runApp(EasyLocalization(
      supportedLocales: [Locale('en', 'US'), Locale('id', 'ID')],
      path: 'assets/translations',
      fallbackLocale: Locale('en', 'US'),
      child: App(),
    ));
  } catch (error) {
    debugPrint("Error" + error);
  }
}