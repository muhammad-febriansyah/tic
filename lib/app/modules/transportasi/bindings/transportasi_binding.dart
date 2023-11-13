import 'package:get/get.dart';

import '../controllers/transportasi_controller.dart';

class TransportasiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TransportasiController>(
      () => TransportasiController(),
    );
  }
}
