
import 'package:flutter/material.dart';
import 'location_details_screen.dart';

class AttendanceScreen extends StatelessWidget {
  final List<Member> members = [
    Member(name: 'John Doe', currentLocation: Location(lat: 37.7749, lng: -122.4194))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Attendance')),
      body: ListView.builder(
        itemCount: members.length,
        itemBuilder: (context, index) {
          final member = members[index];
          return ListTile(
            title: Text(member.name),
            trailing: IconButton(
              icon: Icon(Icons.location_on),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => LocationDetailsScreen(member: member),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class Member {
  final String name;
  final Location currentLocation;
  Member({required this.name, required this.currentLocation});
}

class Location {
  final double lat;
  final double lng;
  Location({required this.lat, required this.lng});
}
