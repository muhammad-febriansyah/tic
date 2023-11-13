import 'package:get/get.dart';

import '../controllers/detailrental_controller.dart';

class DetailrentalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailrentalController>(
      () => DetailrentalController(),
    );
  }
}
