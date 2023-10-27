
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/app_config_provider.dart';
import '../styles/color.dart';

class HomeLayout extends StatelessWidget {
  static const String routeName = "homelayout";

  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text("News",style: Theme.of(context).textTheme.bodyLarge,)),

    );
  }
}
