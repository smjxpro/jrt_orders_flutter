import 'package:get/get.dart';
import 'package:orders/app/data/local/data_sources/order_provider.dart';
import 'package:orders/app/data/repositories/order_repository.dart';
import 'package:orders/app/domain/repositories/order_repository.dart';
import 'package:orders/app/domain/use_cases/get_all_order_use_case.dart';
import 'package:orders/app/presentation/managers/map_tab_controller.dart';
import 'package:orders/app/presentation/managers/order_details_page_controller.dart';
import 'package:orders/app/presentation/managers/order_list_page_controller.dart';

class AppBinding extends Bindings {
  static final find = Get.find;

  @override
  void dependencies() {
    Get.lazyPut(() => OrderListPageController(find()));
    Get.lazyPut(() => GetAllOrderUseCase(find()));
    Get.lazyPut<OrderRepository>(() => OrderRepositoryImpl(find()));
    Get.lazyPut<OrderProvider>(() => OrderProviderImpl());

    Get.lazyPut(() => OrderDetailsPageController());
    Get.lazyPut(() => MapTabController());
  }
}
