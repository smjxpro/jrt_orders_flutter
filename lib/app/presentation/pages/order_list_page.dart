import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orders/app/presentation/managers/order_list_page_controller.dart';
import 'package:orders/app/presentation/widgets/order_list_page_drawer.dart';
import 'package:orders/app/presentation/widgets/map_tab.dart';
import 'package:orders/app/presentation/widgets/order_tile.dart';

class OrderListPage extends StatelessWidget {
  static const routeName = "/order-list";

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<OrderListPageController>();

    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Orders"),
            actions: [
              Obx(
                () => controller.tabIndex.value != 0
                    ? Container()
                    : Row(
                        children: [
                          Obx(() {
                            return controller.searchOpen.value
                                ? Container(
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "Search",
                                      ),
                                      onChanged: (value) {
                                        controller.search(value);
                                      },
                                    ),
                                    width:
                                        MediaQuery.of(context).size.width / 3,
                                  )
                                : Container();
                          }),
                          IconButton(
                              onPressed: () {
                                controller.searchOpen.toggle();
                              },
                              icon: Icon(
                                Icons.search,
                                color: Colors.white,
                              ))
                        ],
                      ),
              )
            ],
            bottom: TabBar(
              onTap: (index) {
                controller.tabIndex.value = index;
                controller.clearSearch();
              },
              tabs: [
                Tab(
                  icon: Icon(Icons.card_travel),
                ),
                Tab(
                  icon: Icon(Icons.map),
                ),
              ],
            ),
          ),
          drawer: OrderListPageDrawer(),
          body: TabBarView(children: [
            Obx(
              () => ListView.builder(
                itemCount: controller.searchList.length,
                itemBuilder: (context, index) {
                  final order = controller.searchList[index];
                  return OrderTile(order: order);
                },
              ),
            ),
            MapTab()
          ]),
        ),
      ),
    );
  }
}
