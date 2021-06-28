import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';
import 'package:orders/app/domain/entities/marker_data.dart';
import 'package:orders/app/domain/entities/order.dart';
import 'package:orders/app/presentation/managers/order_list_page_controller.dart';

class MapTabController extends GetxController
    with StateMixin<List<MarkerData>> {
  final orderList = RxList<Order>();

  Future<List<MarkerData>> getMarkerDataList() async {
    List<MarkerData> list = [];
    orderList.forEach((element) async {
      final result = await locationFromAddress(element.customerAddress);
      final markerData = MarkerData(element, result.first);

      list.add(markerData);
    });

    return list;
  }

  @override
  void onInit() {
    final OrderListPageController orderListPageController = Get.find();
    orderList.assignAll(orderListPageController.orderList);

    append(() => getMarkerDataList);

    super.onInit();
  }
}
