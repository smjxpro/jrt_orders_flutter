import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geocoding/geocoding.dart';
import 'package:latlong2/latlong.dart';

class MapWidget extends StatefulWidget {
  static const routeName = '/map';

  final String address;

  MapWidget(this.address);
  @override
  _MapWidgetState createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  late final MapController mapController;

  Future<Location> getLocation() async {
    final result = await locationFromAddress(widget.address);
    return result.first;
  }

  @override
  void initState() {
    mapController = MapController();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: FutureBuilder<Location>(
              future: getLocation(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Center(
                    child: Text("An error occurred"),
                  );
                }
                if (snapshot.hasData) {
                  return FlutterMap(
                    mapController: mapController,
                    options: MapOptions(
                      center: LatLng(
                          snapshot.data!.latitude, snapshot.data!.longitude),
                      zoom: 15.0,
                    ),
                    layers: [
                      TileLayerOptions(
                          urlTemplate:
                              "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                          subdomains: ['a', 'b', 'c']),
                      MarkerLayerOptions(
                        markers: [
                          Marker(
                            width: 80.0,
                            height: 80.0,
                            point: LatLng(snapshot.data!.latitude,
                                snapshot.data!.longitude),
                            builder: (ctx) => Container(
                              child: Icon(Icons.location_pin),
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                }
                return Center(
                  child: CircularProgressIndicator(),
                );
              }),
        ),
      ),
    );
  }
}
