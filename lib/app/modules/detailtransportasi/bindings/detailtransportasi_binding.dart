import 'package:get/get.dart';

import '../controllers/detailtransportasi_controller.dart';

class DetailtransportasiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailtransportasiController>(
      () => DetailtransportasiController(),
    );
  }
}
