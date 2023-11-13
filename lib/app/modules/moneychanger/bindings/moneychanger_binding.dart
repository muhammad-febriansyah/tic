import 'package:get/get.dart';

import '../controllers/moneychanger_controller.dart';

class MoneychangerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MoneychangerController>(
      () => MoneychangerController(),
    );
  }
}
