
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class RouteDetailsScreen extends StatelessWidget {
  final RouteData routeData;

  RouteDetailsScreen({required this.routeData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Route Details')),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(routeData.startLocation.lat, routeData.startLocation.lng),
                zoom: 12,
              ),
              polylines: Set.from([
                Polyline(
                  polylineId: PolylineId('route'),
                  points: routeData.polylinePoints,
                  color: Colors.blue,
                  width: 5,
                ),
              ]),
              markers: Set.from(routeData.stopMarkers),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Start Location: \${routeData.startLocation.name}'),
                  Text('Stop Location: \${routeData.endLocation.name}'),
                  Text('Total Distance: \${routeData.totalDistance} KM'),
                  Text('Total Duration: \${routeData.totalDuration}'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RouteData {
  final Location startLocation;
  final Location endLocation;
  final List<LatLng> polylinePoints;
  final List<Marker> stopMarkers;
  final String totalDistance;
  final String totalDuration;

  RouteData({
    required this.startLocation,
    required this.endLocation,
    required this.polylinePoints,
    required this.stopMarkers,
    required this.totalDistance,
    required this.totalDuration,
  });
}

class Location {
  final String name;
  final double lat;
  final double lng;
  Location({required this.name, required this.lat, required this.lng});
}
