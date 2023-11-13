import 'dart:convert';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:tic/app/data/models/slider.dart';
import 'package:tic/app/data/models/wisata.dart';
import 'package:tic/url.dart';
import 'package:intl/intl.dart';

class HomeController extends GetxController {
  bool isLoading = false;
  final money = NumberFormat("#,##0", "en_US");

  final CarouselController controllerSlider = CarouselController();

  List<Slider> sliderList = [];
  List<Wisata> wisataList = [];

  void _updateIsLoading(bool currentStatus) {
    isLoading = currentStatus;
    update();
  }

  @override
  void onInit() {
    sliderGet();
    wisataGetPopular();
    super.onInit();
  }

  sliderGet() async {
    try {
      _updateIsLoading(true);
      var response = await http.get(Uri.parse(baseUrl.slider));
      if (response.statusCode == 200) {
        var parsed = jsonDecode(response.body);
        final jsonItems = parsed['data'].cast<Map<String, dynamic>>();
        sliderList = jsonItems.map<Slider>((json) {
          return Slider.fromJson(json);
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

  wisataGetPopular() async {
    try {
      _updateIsLoading(true);
      var response = await http.get(Uri.parse(baseUrl.wisatapopular));
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
}
