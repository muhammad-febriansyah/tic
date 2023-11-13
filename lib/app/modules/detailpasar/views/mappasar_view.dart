import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tic/app/data/models/market.dart';

class MappasarView extends GetView {
  final MarketModel marketModel = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(
              double.parse(marketModel.lat), double.parse(marketModel.lng)),
          zoom: 9.0,
        ),
        mapType: MapType.normal,
        myLocationEnabled: true,
        compassEnabled: true,
        markers: {
          Marker(
            markerId: MarkerId(marketModel.pasar),
            position: LatLng(
                double.parse(marketModel.lat), double.parse(marketModel.lng)),
          ),
        },
      ),
    );
  }
}
