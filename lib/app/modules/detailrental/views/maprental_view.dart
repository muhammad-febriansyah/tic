import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tic/app/data/models/rental.dart';

class MaprentalView extends GetView {
  final RentalModel rentalModel = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(
              double.parse(rentalModel.lat), double.parse(rentalModel.lng)),
          zoom: 9.0,
        ),
        mapType: MapType.normal,
        myLocationEnabled: true,
        markers: {
          Marker(
            markerId: MarkerId(rentalModel.nama),
            position: LatLng(
                double.parse(rentalModel.lat), double.parse(rentalModel.lng)),
          ),
        },
      ),
    );
  }
}
