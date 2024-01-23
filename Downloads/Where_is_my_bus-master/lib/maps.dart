import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MapPage extends StatelessWidget {
  const MapPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Google Maps Live Location'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              openGoogleMapsLiveLocation(context);
            },
            child: Text('Open Google Maps with Live Location'),
          ),
        ),
      ),
    );
  }

  openGoogleMapsLiveLocation(BuildContext context) async {
    double latitude = 17.5950715;
    double longitude = 78.41903;

    // Create a LatLng object
    LatLng location = LatLng(latitude, longitude);

    // Launch Google Maps app with the provided location
    await launchGoogleMapsApp(location);
  }

  Future<void> launchGoogleMapsApp(LatLng location) async {
    String googleMapsUrl = 'https://www.google.com/maps/search/?api=1&query=${location.latitude},${location.longitude}';

    if (await canLaunch(googleMapsUrl)) {
      await launch(googleMapsUrl);
    } else {
      throw 'Could not launch $googleMapsUrl';
    }
  }
}
