import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:get/get.dart';
import 'package:syopshop/app/modules/home/controllers/productcontroller.dart';
import 'package:syopshop/app/modules/home/views/product_tile.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "SyopShop",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          elevation: 0,
          leading: const Icon(Icons.shopping_cart_rounded),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.info)),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Welcome to Syopshop',
                      style: TextStyle(
                          fontFamily: 'avenir',
                          fontSize: 32,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  IconButton(
                      icon: const Icon(Icons.view_list_rounded),
                      onPressed: () {}),
                  IconButton(
                      icon: const Icon(Icons.grid_view), onPressed: () {}),
                ],
              ),
            ),
            Expanded(
                child: Obx(() => AlignedGridView.count(
                      itemCount: controller.productList.length,
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      itemBuilder: (context, index) {
                        return ProductTile(controller.productList[index]);
                      },
                    )))
          ],
        ));
  }
}
