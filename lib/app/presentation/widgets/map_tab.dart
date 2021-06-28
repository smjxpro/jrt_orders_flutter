import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';
import 'package:orders/app/domain/entities/order.dart';
import 'package:orders/app/presentation/managers/map_tab_controller.dart';

class MapTab extends StatelessWidget {
  static const routeName = '/map-tab';

  @override
  Widget build(BuildContext context) {
    final MapTabController controller = Get.find();
    return controller.obx((state) {
      List<Marker> markerList = [];

      state!.forEach((element) {
        final marker = Marker(
          width: 80.0,
          height: 80.0,
          point: LatLng(element.location.latitude, element.location.longitude),
          builder: (ctx) => Container(
            child: Column(
              children: [
                Icon(Icons.location_pin),
                SizedBox(
                  height: 4,
                ),
                Text('${element.order.customerName}'),
              ],
            ),
          ),
        );

        markerList.add(marker);
      });
      return SafeArea(
        child: Container(
            child: FlutterMap(
          mapController: MapController(),
          options: MapOptions(
            center: LatLng(
                state.first.location.latitude, state.first.location.longitude),
            zoom: 15.0,
          ),
          layers: [
            TileLayerOptions(
                urlTemplate:
                    "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                subdomains: ['a', 'b', 'c']),
            MarkerLayerOptions(
              markers: markerList,
            ),
          ],
        )),
      );
    });
  }
}
