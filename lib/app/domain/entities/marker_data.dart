import 'package:geocoding/geocoding.dart';

import 'order.dart';

class MarkerData {
  final Order order;
  final Location location;

  MarkerData(this.order, this.location);
}
