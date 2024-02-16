import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nourishnet/features/maps/screens/location_page.dart';

class CustomCard extends StatelessWidget {
  LocationPageState lps = LocationPageState();
  final String name;
  final String state;
  final double distance;

  CustomCard({
    required this.name,
    required this.state,
    required this.distance,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Card(
        elevation: 3,
        margin: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'State: $state',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 4),
              Text(
                'Distance: ${distance.toStringAsFixed(2)} km',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  Get.to(() => LocationPage(
                        locationName: name,
                      ));
                },
                child: Text(
                  'View Location',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
