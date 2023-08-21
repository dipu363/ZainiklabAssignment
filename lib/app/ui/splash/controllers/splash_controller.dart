// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';

class DashboardController extends GetxController {
  final currentIndex = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void onChangePage(int index) => currentIndex.value = index;
}
