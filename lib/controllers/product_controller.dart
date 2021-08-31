import 'package:get/get.dart';
import 'package:shop_api/controllers/fetch_api.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  // ignore: deprecated_member_use
  var productModel = [].obs;
  @override
  void onInit() {
    fetchProducts();
    // TODO: implement onInit
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await WebServices.getProduct();
      if (products.isNotEmpty) {
        productModel.value = products;
      }
    } finally {
      // TODO
      isLoading(false);
    }
  }
}
