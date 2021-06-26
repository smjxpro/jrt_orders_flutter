import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orders/app/presentation/managers/order_list_page_controller.dart';

class OrderListPage extends StatelessWidget {
  static const routeName = "/order-list";

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<OrderListPageController>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Orders"),
      ),
      body: controller.obx(
        (state) => ListView.builder(
          itemCount: state!.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(state[index].customerName!),
          ),
        ),
      ),
    );
  }
}
