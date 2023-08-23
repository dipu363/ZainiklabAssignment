
import 'package:get/get.dart';

import '../controllers/shop_controller.dart';

class ShopdBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
      () => DashboardController(),
    );
  }
}
