import 'package:orders/app/_core/base_use_case.dart';
import 'package:orders/app/domain/entities/order.dart';
import 'package:orders/app/domain/repositories/order_repository.dart';

class GetAllOrderUseCase implements BaseUseCase<List<Order>, NoParams> {
  final OrderRepository _orderRepository;

  GetAllOrderUseCase(this._orderRepository);

  @override
  Future<List<Order>> call(NoParams params) async {
    try {
      final result = await _orderRepository.getAllOrder();
      return result;
    } catch (e) {
      return Future.error(e);
    }
  }
}
