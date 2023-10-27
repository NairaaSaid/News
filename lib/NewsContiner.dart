import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_apps/api/api_manager.dart';
import 'package:news_apps/model/NewsResponse.dart';
import 'package:news_apps/model/SourceResponse.dart';
import 'package:news_apps/styles/color.dart';
class NewsContainer extends StatelessWidget {
  Source source;
  NewsContainer({required this.source});
  Widget build(BuildContext context) {
    return FutureBuilder<NewsResponse?>(
      future: ApiManager.getNewsBySourceId(source.id ?? ""),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(color: primaryColor),);
        } else if (snapshot.hasError) {
          return Column(children: [
              Text('Something Error'),
              ElevatedButton(onPressed: () {}, child: Text("Try Again"))
            ],);}
        if(snapshot.data?.status!='ok'){
            return Column(
              children: [
                Text(snapshot.data!.message ?? "",
                    style: TextStyle(color: blackColor)),
                ElevatedButton(onPressed: () {}, child: Text("Try Again"))
              ],);}
        var newsList=snapshot.data?.articles??[];
        return ListView.builder(itemBuilder: (context, index) {
          return Text(newsList[index].title??'',style: TextStyle(color: Colors.black));
        },itemCount: newsList.length,);
      },);}}
