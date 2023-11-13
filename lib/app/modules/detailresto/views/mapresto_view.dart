import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tic/app/data/models/rm.dart';

class MaprestoView extends GetView {
  final RmModel rmModel = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(double.parse(rmModel.lat), double.parse(rmModel.lng)),
          zoom: 9.0,
        ),
        mapType: MapType.normal,
        myLocationEnabled: true,
        markers: {
          Marker(
            markerId: MarkerId(rmModel.nama),
            position:
                LatLng(double.parse(rmModel.lat), double.parse(rmModel.lng)),
          ),
        },
      ),
    );
  }
}
