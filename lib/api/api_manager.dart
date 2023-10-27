import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_apps/api/api_constant.dart';
import 'package:news_apps/model/SourceResponse.dart';

import '../model/NewsResponse.dart';

class ApiManager {
  static Future<SourceResponse> getSources() async {
    // https://newsapi.org/v2/top-headlines/sources?apiKey=0833e0317fbc4dd1863cba324505b4a4
    Uri url = Uri.https(ApiConstant.baseUrl, ApiConstant.sourceApi,
        {'apiKey': '0833e0317fbc4dd1863cba324505b4a4'});

    try {
      var response = await http.get(url);
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      return SourceResponse.fromJson(json);
    } catch (e) {
      throw e;
    }
  }

  static Future<NewsResponse> getNewsBySourceId(String sourceId) async {
    //https://newsapi.org/v2/everything?q=bitcoin&apiKey=0833e0317fbc4dd1863cba324505b4a4
    Uri url = Uri.https(
      ApiConstant.baseUrl,
      ApiConstant.sourceApi,
      {
        'apiKey': '0833e0317fbc4dd1863cba324505b4a4',
        'sources': sourceId,
      },
    );
    try {
      var response = await http.get(url);
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      return NewsResponse.fromJson(json);
    } catch (e) {
      throw e;
    }
  }
}
