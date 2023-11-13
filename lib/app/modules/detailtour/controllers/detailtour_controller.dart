import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:tic/app/data/models/wisata.dart';
import 'package:tic/url.dart';

class DetailtourController extends GetxController {
  final Wisata wisata = Get.arguments;

  @override
  void onInit() {
    WisataUpdate();
    super.onInit();
  }

  WisataUpdate() async {
    try {
      final response = await http.get(
        Uri.parse(
          baseUrl.updateWisataViews + wisata.id.toString(),
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
