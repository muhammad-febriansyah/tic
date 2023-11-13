import 'package:get/get.dart';
import 'package:tic/url.dart';

class SplashProvider extends GetConnect {
  Future<Response> getSplash() {
    return get(
      baseUrl.setting,
      headers: {"Accept": "application/json"},
    );
  }
}
