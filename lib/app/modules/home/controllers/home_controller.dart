import 'package:get/get.dart';
import 'package:syopshop/app/models/product.dart';
import 'package:syopshop/app/services/remote_services.dart';

class HomeController extends GetxController {
 var productList = <Product>[].obs;

  void onInit() {
    fetchProducts();
    super.onInit();
  }


  void fetchProducts() async{
    var products = await RemoteServices.fetchProducts();
    if(products != null){
      productList.value = products;
    }
  }

}
