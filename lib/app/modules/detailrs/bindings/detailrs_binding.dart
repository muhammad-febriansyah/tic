import 'package:get/get.dart';

import '../controllers/detailrs_controller.dart';

class DetailrsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailrsController>(
      () => DetailrsController(),
    );
  }
}
