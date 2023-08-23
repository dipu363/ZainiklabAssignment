import 'dart:convert';

import 'package:get/get.dart';

import '../../../model/product_model.dart';
import '../../../service/apiService.dart';


class ExploreController extends GetxController {
  var productModel = ProductModel().obs;
  var position = 0.obs;

  @override
  void onInit() {
    getProductList();
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

  Future<void> getProductList() async {
    ApiService.getOnlyCategoryList().then((value) {
      productModel.value =ProductModel.fromJson(value.data);
      print(productModel.value.products!.length);
    });
  }
}
