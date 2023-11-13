import 'package:get/get.dart';

import '../controllers/rs_controller.dart';

class RsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RsController>(
      () => RsController(),
    );
  }
}
