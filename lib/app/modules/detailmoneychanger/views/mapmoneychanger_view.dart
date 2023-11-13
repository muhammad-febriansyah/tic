import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tic/app/data/models/money.dart';

class MapmoneychangerView extends GetView {
  final MoneyChanger moneyChanger = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(
              double.parse(moneyChanger.lat), double.parse(moneyChanger.lng)),
          zoom: 9.0,
        ),
        mapType: MapType.normal,
        myLocationEnabled: true,
        markers: {
          Marker(
            markerId: MarkerId(moneyChanger.nama),
            position: LatLng(
                double.parse(moneyChanger.lat), double.parse(moneyChanger.lng)),
          ),
        },
      ),
    );
  }
}
