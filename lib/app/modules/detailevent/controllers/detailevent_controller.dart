import 'dart:convert';

import 'package:get/get.dart';
import 'package:tic/app/data/models/event.dart';
import 'package:http/http.dart' as http;
import 'package:tic/url.dart';

class DetaileventController extends GetxController {
  final Event agenda = Get.arguments;

  @override
  void onInit() {
    eventUpdate();
    super.onInit();
  }

  eventUpdate() async {
    try {
      final response = await http.get(
        Uri.parse(
          baseUrl.updateEventViews + agenda.id.toString(),
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
