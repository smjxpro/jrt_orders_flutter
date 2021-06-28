import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:orders/app/_core/base_use_case.dart';
import 'package:orders/app/domain/entities/order.dart';
import 'package:orders/app/domain/use_cases/get_all_order_use_case.dart';

class OrderListPageController extends GetxController {
  final GetAllOrderUseCase _getAllOrderUseCase;

  OrderListPageController(this._getAllOrderUseCase);

  final searchOpen = RxBool(false);
  final tabIndex = RxInt(0);

  final orderList = RxList<Order>();
  final searchList = RxList<Order>();

  @override
  void onInit() async {
    await getAllOrder();
    super.onInit();
  }

  getAllOrder() async {
    final response = await _getAllOrderUseCase.call(NoParams());

    orderList.assignAll(response);
    searchList.assignAll(response);
  }

  search(String keyword) {
    final result = orderList
        .where((element) =>
            element.customerName!.toLowerCase().contains(keyword.toLowerCase()))
        .toList();
    searchList.assignAll(result);
  }

  clearSearch() {
    searchList.assignAll(orderList);
  }
}
