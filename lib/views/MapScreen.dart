import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mobile_frontend/views/InfoScreen.dart';

class MapSample extends StatefulWidget {
  const MapSample({Key? key}) : super(key: key);

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer();
  BitmapDescriptor? zalupa;
  bool isLoading = true;

  final LatLng _latLng = LatLng(57.627732, 39.851561);

  @override
  void initState() {
    iconLoading();
    getPosition();
    super.initState();
  }

  void iconLoading() async {
    zalupa = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(), 'assets/images/marker.png');
    isLoading = false;
    setState(() {});
  }

  void getPosition() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    print(position.latitude);
    print(position.longitude);
  }

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(57.627732, 39.851561),
    zoom: 17.4746,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : Stack(
        children: [
          GoogleMap(
            onTap: (position) {

            },
            onCameraMove: (position) {

            },
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
            markers: {
              Marker(
                markerId: MarkerId('1'),
                position: LatLng(57.627732, 39.851561),
                icon: zalupa!,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const InfoScreen()),
                  );
                },
              ),
              Marker(
                markerId: MarkerId('2'),
                position: LatLng(57.627683, 39.852203),
                icon: zalupa!,
              ),
            },
          ),
        ],
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kGooglePlex));
  }
}