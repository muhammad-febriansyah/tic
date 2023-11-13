import 'package:get/get.dart';

import '../controllers/detailtour_controller.dart';

class DetailtourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailtourController>(
      () => DetailtourController(),
    );
  }
}
