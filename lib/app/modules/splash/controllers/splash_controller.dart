import 'dart:async';

import 'package:get/get.dart';
import 'package:tic/app/data/models/setting.dart';
import 'package:tic/app/modules/splash/providers/splash_provider.dart';
import 'package:tic/app/routes/app_pages.dart';

class SplashController extends GetxController {
  var splash = [].obs;
  void getData() {
    SplashProvider().getSplash().then(
      (Response response) {
        var resBody = response.body;
        var data = resBody['data'];
        for (var element in data) {
          Setting setting = Setting.fromJson(element);
          splash.add(setting);
        }
      },
    );
  }

  @override
  void onInit() {
    super.onInit();
    getData();
    Timer(
      Duration(seconds: 3),
      () async {
        await Get.offAllNamed(Routes.BOTTOMBAR);
      },
    );
  }
}
