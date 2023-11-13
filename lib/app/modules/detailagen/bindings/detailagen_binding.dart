import 'package:get/get.dart';

import '../controllers/detailagen_controller.dart';

class DetailagenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailagenController>(
      () => DetailagenController(),
    );
  }
}
