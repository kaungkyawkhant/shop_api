import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_api/controllers/product_controller.dart';

class HomeScreen extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
        title: Text("Flutter Shop"),
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.shopping_cart)),
        ],
      ),
      body: Column(
        children: [
          Padding(padding:  const EdgeInsets.all(16),
          child: Row(children: [
            Expanded(child:   Text("Shop")),
            IconButton(onPressed: (){}, icon: Icon(Icons.view_list_rounded)),
            IconButton(onPressed: (){}, icon: Icon(Icons.grid_view)),
          ],),),
          Expanded(
            child: Obx(() {
            if (productController.isLoading.value)
              return Center(child: CircularProgressIndicator());
              else
              return Column(
                children: [
                  
                ],
              );            
          }))
        ],
      ),
    );
  }
}