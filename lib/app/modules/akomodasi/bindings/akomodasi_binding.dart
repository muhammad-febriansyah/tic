import 'package:get/get.dart';

import '../controllers/akomodasi_controller.dart';

class AkomodasiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AkomodasiController>(
      () => AkomodasiController(),
    );
  }
}
