import 'dart:convert';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tic/app/data/models/wisata.dart';
import 'package:http/http.dart' as http;
import 'package:tic/url.dart';

class MapsController extends GetxController {
  static const LatLng _kMapCenter =
      LatLng(2.370971100583796, 128.41366346161996);
  static const CameraPosition kInitialPosition =
      CameraPosition(target: _kMapCenter, zoom: 11.0, tilt: 0, bearing: 0);
  bool isLoading = false;
  List<Wisata> wisataList = [];
  List<Marker> allMarkers = [];
  List<Marker> buildMarkers() {
    final markerList = <Marker>[];
    for (var i = 0; i < wisataList.length; i++) {
      LatLng latlng;
      latlng = LatLng(
        double.parse(wisataList[i].lat),
        double.parse(wisataList[i].lng),
      );
      markerList.add(
        Marker(
          markerId: MarkerId(wisataList[i].nama.toString()),
          position: latlng,
        ),
      );
    }
    return markerList;
  }

  void _updateIsLoading(bool currentStatus) {
    isLoading = currentStatus;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    wisataGet();
    buildMarkers();
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
}
