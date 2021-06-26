import 'package:get/get.dart';
import 'package:orders/app/_core/base_use_case.dart';
import 'package:orders/app/domain/entities/order.dart';
import 'package:orders/app/domain/use_cases/get_all_order_use_case.dart';

class OrderListPageController extends GetxController
    with StateMixin<List<Order>> {
  final GetAllOrderUseCase _getAllOrderUseCase;

  OrderListPageController(this._getAllOrderUseCase);

  @override
  void onInit() {
    append(() => getAllOrder);
    super.onInit();
  }

  Future<List<Order>> getAllOrder() {
    return _getAllOrderUseCase.call(NoParams());
  }
}
