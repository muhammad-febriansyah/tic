import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tic/app/data/models/event.dart';

class MapeventView extends GetView {
  final Event agenda = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(double.parse(agenda.lat), double.parse(agenda.lng)),
          zoom: 9.0,
        ),
        mapType: MapType.normal,
        myLocationEnabled: true,
        markers: {
          Marker(
            markerId: MarkerId(agenda.judul),
            position:
                LatLng(double.parse(agenda.lat), double.parse(agenda.lng)),
          ),
        },
      ),
    );
  }
}
