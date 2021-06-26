import 'package:orders/app/domain/entities/order.dart';

abstract class OrderRepository {
  Future<List<Order>> getAllOrder();
}
