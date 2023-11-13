import 'dart:convert';

import 'package:get/get.dart';
import 'package:tic/app/data/models/rental.dart';
import 'package:http/http.dart' as http;
import 'package:tic/url.dart';

class DetailrentalController extends GetxController {
  final RentalModel rentalModel = Get.arguments;

  @override
  void onInit() {
    updateViews();
    super.onInit();
  }

  updateViews() async {
    try {
      final response = await http.get(
        Uri.parse(
          baseUrl.updaterentalViews + rentalModel.id.toString(),
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
