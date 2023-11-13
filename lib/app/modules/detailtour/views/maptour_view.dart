import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tic/app/data/models/wisata.dart';

class MaptourView extends GetView {
  final Wisata wisata = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(double.parse(wisata.lat), double.parse(wisata.lng)),
          zoom: 9.0,
        ),
        mapType: MapType.normal,
        myLocationEnabled: true,
        markers: {
          Marker(
            markerId: MarkerId(wisata.nama),
            position:
                LatLng(double.parse(wisata.lat), double.parse(wisata.lng)),
          ),
        },
      ),
    );
  }
}
