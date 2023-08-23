
import 'package:get/get.dart';

import '../../../model/product_model.dart';
import '../../../service/apiService.dart';


class ExploreController extends GetxController {
  var productModel = ProductModel().obs;
  var position = 0.obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    getProductList();
    super.onInit();
  }
  Future<void> getProductList() async {
      isLoading.value = true;
    try{
      await ApiService.getOnlyCategoryList().then((value) {

        productModel.value =ProductModel.fromJson(value.data);
        isLoading.value = false;
      });
    }catch(e){
      isLoading.value = false;
    }
  }
}
