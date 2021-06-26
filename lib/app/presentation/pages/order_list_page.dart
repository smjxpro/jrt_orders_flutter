import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orders/app/presentation/managers/order_list_page_controller.dart';
import 'package:orders/app/presentation/pages/order_details_page.dart';

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
          itemBuilder: (context, index) {
            final order = state[index];
            return ListTile(
              onTap: () {
                Navigator.of(context)
                    .pushNamed(OrderDetailsPage.routeName, arguments: order);
              },
              title: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.person_pin,
                                color: Colors.deepOrangeAccent,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                "${order.customerName!.capitalize}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                          Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  color: order.orderStatus == 'SHIPPED'
                                      ? Colors.green
                                      : Colors.red,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4))),
                              child: Text(
                                '${order.orderStatus}',
                                style: TextStyle(color: Colors.white),
                              )),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.money,
                                color: Colors.green,
                              ),
                              Text('${order.orderAmount}'),
                              SizedBox(
                                width: 8,
                              ),
                              Icon(
                                Icons.shopping_cart,
                                color: Colors.brown,
                              ),
                              Text('${order.numberOfProduct}'),
                            ],
                          ),
                          Text('${order.orderDate!.split(" ").first}')
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
