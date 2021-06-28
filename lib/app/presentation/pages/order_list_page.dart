import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orders/app/presentation/managers/order_list_page_controller.dart';
import 'package:orders/app/presentation/widgets/order_tile.dart';

class OrderListPage extends StatelessWidget {
  static const routeName = "/order-list";

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<OrderListPageController>();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Orders"),
        ),
        body: controller.obx(
          (state) => ListView.builder(
            itemCount: state!.length,
            itemBuilder: (context, index) {
              final order = state[index];
              return OrderTile(order: order);
            },
          ),
        ),
      ),
    );
  }
}
