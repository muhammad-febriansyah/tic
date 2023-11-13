import 'dart:convert';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:tic/app/data/models/agen.dart';
import 'package:http/http.dart' as http;
import 'package:tic/url.dart';

class AgenController extends GetxController {
  bool isLoading = false;
  final money = NumberFormat("#,##0", "en_US");

  List<AgenModel> data = [];
  void _updateIsLoading(bool currentStatus) {
    isLoading = currentStatus;
    update();
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    getData();
  }

  getData() async {
    try {
      _updateIsLoading(true);
      var response = await http.get(
        Uri.parse(
          baseUrl.agen,
        ),
        headers: {"Accept": "application/json"},
      );
      if (response.statusCode == 200) {
        var parsed = jsonDecode(response.body);
        final jsonItems = parsed['data'].cast<Map<String, dynamic>>();
        data = jsonItems.map<AgenModel>((json) {
          return AgenModel.fromJson(json);
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
