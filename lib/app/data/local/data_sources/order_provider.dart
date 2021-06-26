import 'package:flutter/services.dart';
import 'package:orders/app/data/local/models/order_model.dart';

abstract class OrderProvider {
  Future<List<OrderModel>> getAllOrder();
}

class OrderProviderImpl implements OrderProvider {
  @override
  Future<List<OrderModel>> getAllOrder() async {
    String data = await rootBundle.loadString("assets/json/orders_list.json");

    return orderModelsFromJson(data);
  }
}
