import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../controllers/maps_controller.dart';

class MapsView extends GetView<MapsController> {
  final controller = Get.put(MapsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GetBuilder<MapsController>(
          builder: (controller) {
            final mark = controller.buildMarkers();
            return GoogleMap(
              initialCameraPosition: MapsController.kInitialPosition,
              mapType: MapType.normal,
              myLocationEnabled: true,
              markers: Set.from(mark),
              compassEnabled: true,
            );
          },
        ),
      ),
    );
  }
}
