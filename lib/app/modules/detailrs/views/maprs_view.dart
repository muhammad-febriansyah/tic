import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tic/app/data/models/rs.dart';

class MaprsView extends GetView {
  final Hospital rs = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(double.parse(rs.lat), double.parse(rs.lng)),
          zoom: 9.0,
        ),
        mapType: MapType.normal,
        myLocationEnabled: true,
        markers: {
          Marker(
            markerId: MarkerId(rs.nama),
            position: LatLng(double.parse(rs.lat), double.parse(rs.lng)),
          ),
        },
      ),
    );
  }
}
