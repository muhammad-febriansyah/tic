import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:tic/app/data/models/rm.dart';
import 'package:tic/url.dart';

class RestoController extends GetxController {
  bool isLoading = false;
  List<RmModel> data = [];
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
          baseUrl.rm,
        ),
        headers: {"Accept": "application/json"},
      );
      if (response.statusCode == 200) {
        var parsed = jsonDecode(response.body);
        final jsonItems = parsed['data'].cast<Map<String, dynamic>>();
        data = jsonItems.map<RmModel>((json) {
          return RmModel.fromJson(json);
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
