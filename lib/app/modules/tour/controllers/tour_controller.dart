import 'dart:convert';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:tic/app/data/models/wisata.dart';
import 'package:http/http.dart' as http;
import 'package:tic/url.dart';

class TourController extends GetxController {
  final money = NumberFormat("#,##0", "en_US");
  bool isLoading = false;
  List<Wisata> wisataList = [];
  void _updateIsLoading(bool currentStatus) {
    isLoading = currentStatus;
    update();
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    wisataGet();
  }

  wisataGet() async {
    try {
      _updateIsLoading(true);
      var response = await http.get(Uri.parse(baseUrl.wisata));
      if (response.statusCode == 200) {
        var parsed = jsonDecode(response.body);
        final jsonItems = parsed['data'].cast<Map<String, dynamic>>();
        wisataList = jsonItems.map<Wisata>((json) {
          return Wisata.fromJson(json);
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
  void increment() => count.value++;
}
