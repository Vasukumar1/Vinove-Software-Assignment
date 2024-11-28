
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationDetailsScreen extends StatelessWidget {
  final Member member;

  LocationDetailsScreen({required this.member});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('\${member.name} Location')),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(member.currentLocation.lat, member.currentLocation.lng),
                zoom: 14,
              ),
              markers: Set.from([
                Marker(
                  markerId: MarkerId('currentLocation'),
                  position: LatLng(member.currentLocation.lat, member.currentLocation.lng),
                ),
              ]),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text('Visited Locations', style: TextStyle(fontWeight: FontWeight.bold)),
                      Spacer(),
                      IconButton(
                        icon: Icon(Icons.calendar_today),
                        onPressed: () {
                          // Show date filter dialog
                        },
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: member.visitedLocations.length,
                    itemBuilder: (context, index) {
                      final location = member.visitedLocations[index];
                      return ListTile(
                        title: Text(location.name),
                        subtitle: Text(location.timestamp),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Member {
  final String name;
  final Location currentLocation;
  final List<LocationDetails> visitedLocations;

  Member({required this.name, required this.currentLocation, this.visitedLocations = const []});
}

class Location {
  final double lat;
  final double lng;
  Location({required this.lat, required this.lng});
}

class LocationDetails {
  final String name;
  final String timestamp;

  LocationDetails({required this.name, required this.timestamp});
}
