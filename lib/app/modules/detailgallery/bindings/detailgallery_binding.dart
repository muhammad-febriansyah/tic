import 'package:get/get.dart';

import '../controllers/detailgallery_controller.dart';

class DetailgalleryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailgalleryController>(
      () => DetailgalleryController(),
    );
  }
}
