import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:news_apps/layout/home_layout.dart';
import 'package:news_apps/provider/app_config_provider.dart';
import 'package:news_apps/styles/theme.dart';
import 'package:provider/provider.dart';

import 'category/categoryDetails.dart';


void main() {
  runApp(ChangeNotifierProvider(create: (BuildContext context) => AppConfigProvider(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      initialRoute: categoryDetails.routeName,
      routes: {
        HomeLayout.routeName: (context) => HomeLayout(),
        categoryDetails.routeName: (context) => categoryDetails(),



      },
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      theme: MyThemeData.light,
      themeMode: provider.appTheme,
      //darkTheme: MyThemeData.dark,
      locale: Locale(provider.appLanguage),
    );
  }
}