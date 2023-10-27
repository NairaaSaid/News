import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_apps/api/api_manager.dart';
import 'package:news_apps/category/tabs_container.dart';
import 'package:news_apps/styles/color.dart';
import 'package:provider/provider.dart';

import '../model/SourceResponse.dart';
import '../provider/app_config_provider.dart';

class categoryDetails extends StatelessWidget {
  static const String routeName = "category";

  const categoryDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text("News", style: Theme
          .of(context)
          .textTheme
          .bodyMedium!.copyWith(color: WhiteColor))),
      body: FutureBuilder<SourceResponse?>(builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(color: primaryColor),
          );
        }
        else if (snapshot.hasError) {
          return Column(children: [
            Text("Something Error"),
            ElevatedButton(onPressed: () {}, child: Text("Try Again"))
          ],);
        }
        if (snapshot.data?.status != 'ok') {
         return Column(children: [Text(snapshot.data?.message ?? ""),
            ElevatedButton(onPressed: () {}, child: Text("Try Again"))],);
        }
        var sourceList=snapshot.data?.sources??[];

        return  TabCount(sourcesList:sourceList);

      }, future: ApiManager.getSources()),

    );
  }
}
