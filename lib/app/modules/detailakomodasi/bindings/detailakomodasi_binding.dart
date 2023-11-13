import 'package:get/get.dart';

import '../controllers/detailakomodasi_controller.dart';

class DetailakomodasiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailakomodasiController>(
      () => DetailakomodasiController(),
    );
  }
}
