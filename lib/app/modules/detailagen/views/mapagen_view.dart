import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tic/app/data/models/agen.dart';

class MapagenView extends GetView {
  final AgenModel agenModel = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target:
              LatLng(double.parse(agenModel.lat), double.parse(agenModel.lng)),
          zoom: 9.0,
        ),
        mapType: MapType.normal,
        myLocationEnabled: true,
        markers: {
          Marker(
            markerId: MarkerId(agenModel.agen),
            position: LatLng(
                double.parse(agenModel.lat), double.parse(agenModel.lng)),
          ),
        },
      ),
    );
  }
}
