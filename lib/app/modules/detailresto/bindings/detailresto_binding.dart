import 'package:get/get.dart';

import '../controllers/detailresto_controller.dart';

class DetailrestoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailrestoController>(
      () => DetailrestoController(),
    );
  }
}
