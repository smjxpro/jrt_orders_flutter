import 'package:orders/app/data/local/data_sources/order_provider.dart';
import 'package:orders/app/domain/entities/order.dart';
import 'package:orders/app/domain/repositories/order_repository.dart';

class OrderRepositoryImpl implements OrderRepository {
  final OrderProvider _orderProvider;

  OrderRepositoryImpl(this._orderProvider);
  @override
  Future<List<Order>> getAllOrder() {
    return _orderProvider.getAllOrder();
  }
}
