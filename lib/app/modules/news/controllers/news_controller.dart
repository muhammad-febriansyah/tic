import 'dart:convert';

import 'package:get/get.dart';
import 'package:tic/app/data/models/news.dart';
import 'package:http/http.dart' as http;
import 'package:tic/url.dart';

class NewsController extends GetxController {
  bool isLoading = false;
  List<News> newsList = [];
  void _updateIsLoading(bool currentStatus) {
    isLoading = currentStatus;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    getBerita();
  }

  getBerita() async {
    try {
      _updateIsLoading(true);
      var response = await http.get(Uri.parse(baseUrl.news));
      if (response.statusCode == 200) {
        var parsed = jsonDecode(response.body);
        final jsonItems = parsed['data'].cast<Map<String, dynamic>>();
        newsList = jsonItems.map<News>((json) {
          return News.fromJson(json);
        }).toList();
        _updateIsLoading(false);
        update();
      } else {
        print("ada kesalahan sistem");
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
