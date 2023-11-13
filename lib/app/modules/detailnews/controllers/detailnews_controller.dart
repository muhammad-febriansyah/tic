import 'dart:convert';

import 'package:get/get.dart';
import 'package:tic/app/data/models/news.dart';
import 'package:http/http.dart' as http;
import 'package:tic/url.dart';

class DetailnewsController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final News beritaList = Get.arguments;
  @override
  void onInit() {
    newsUpdate();
    super.onInit();
  }

  newsUpdate() async {
    try {
      final response = await http.get(
        Uri.parse(
          baseUrl.updatenews + beritaList.id.toString(),
        ),
      );
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        print("Ada kesalahan sistem");
      }
      update();
    } catch (e) {
      rethrow;
    }
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
