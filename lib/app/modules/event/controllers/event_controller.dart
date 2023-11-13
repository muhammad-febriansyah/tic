import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:tic/app/data/models/event.dart';
import 'package:tic/url.dart';

class EventController extends GetxController
    with GetSingleTickerProviderStateMixin {
  bool isLoading = false;
  List<Event> agendaList = [];
  void _updateIsLoading(bool currentStatus) {
    isLoading = currentStatus;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    agendaGet();
  }

  agendaGet() async {
    try {
      _updateIsLoading(true);
      var response = await http.get(Uri.parse(baseUrl.event));
      if (response.statusCode == 200) {
        var parsed = jsonDecode(response.body);
        final jsonItems = parsed['data'].cast<Map<String, dynamic>>();
        agendaList = jsonItems.map<Event>((json) {
          return Event.fromJson(json);
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
