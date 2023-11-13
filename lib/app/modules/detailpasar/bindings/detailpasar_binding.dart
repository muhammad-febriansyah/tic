import 'package:get/get.dart';

import '../controllers/detailpasar_controller.dart';

class DetailpasarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailpasarController>(
      () => DetailpasarController(),
    );
  }
}
