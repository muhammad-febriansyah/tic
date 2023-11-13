import 'package:get/get.dart';

import '../controllers/detailmoneychanger_controller.dart';

class DetailmoneychangerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailmoneychangerController>(
      () => DetailmoneychangerController(),
    );
  }
}
