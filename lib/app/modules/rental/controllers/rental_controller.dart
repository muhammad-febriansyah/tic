import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

import 'package:tic/app/data/models/rental.dart';
import 'package:tic/url.dart';

class RentalController extends GetxController {
  bool isLoading = false;
  final money = NumberFormat("#,##0", "en_US");

  List<RentalModel> data = [];
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
          baseUrl.penyewaan,
        ),
        headers: {"Accept": "application/json"},
      );
      if (response.statusCode == 200) {
        var parsed = jsonDecode(response.body);
        final jsonItems = parsed['data'].cast<Map<String, dynamic>>();
        data = jsonItems.map<RentalModel>((json) {
          return RentalModel.fromJson(json);
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
