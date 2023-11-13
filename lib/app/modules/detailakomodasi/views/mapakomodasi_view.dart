import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tic/app/data/models/akomodasi.dart';

class MapakomodasiView extends GetView {
  final Akomodasi akomodasi = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target:
              LatLng(double.parse(akomodasi.lat), double.parse(akomodasi.lng)),
          zoom: 9.0,
        ),
        mapType: MapType.normal,
        myLocationEnabled: true,
        markers: {
          Marker(
            markerId: MarkerId(akomodasi.nama),
            position: LatLng(
                double.parse(akomodasi.lat), double.parse(akomodasi.lng)),
          ),
        },
      ),
    );
  }
}
