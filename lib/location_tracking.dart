import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

import 'googlemap_api.dart';

class LocationTracking extends StatefulWidget {
  const LocationTracking({Key? key}) : super(key: key);

  @override
  _LocationTrackingState createState() => _LocationTrackingState();
}

class _LocationTrackingState extends State<LocationTracking> {
  LatLng sourceLocation = LatLng(28.432864, 77.002563);
  LatLng destinationLatlng = LatLng(28.431626, 77.002475);

  Completer<GoogleMapController> _controller = Completer();

  Set<Marker> _marker = Set<Marker>();

  Set<Polyline> _polylines = Set<Polyline>();
  List<LatLng> polylineCoordinates = [];
  late PolylinePoints polylinePoints;

  late StreamSubscription<LocationData> subscription;

  LocationData? currentLocation;
  late LocationData destinationLocation;
  late Location location;

  @override
  void initState() {
    super.initState();

    location = Location();
    polylinePoints = PolylinePoints();

    subscription = location.onLocationChanged.listen((clocation) {
      currentLocation = clocation;
    });

    setInitialLocation();
  }

  void setInitialLocation() async {
    await location.getLocation().then((value) {
      currentLocation = value;
      setState(() {});
    });

    destinationLocation = LocationData.fromMap({
      "latitude": destinationLatlng.latitude,
      "longitude": destinationLatlng.longitude,
    });
  }

  void showLocationPins() {
    var sourceposition = LatLng(
        currentLocation!.latitude ?? 0.0, currentLocation!.longitude ?? 0.0);

    var destinationPosition =
        LatLng(destinationLatlng.latitude, destinationLatlng.longitude);

    _marker.add(Marker(
      markerId: MarkerId('sourcePosition'),
      position: sourceposition,
    ));

    _marker.add(
      Marker(
        markerId: MarkerId('destinationPosition'),
        position: destinationPosition,
      ),
    );
  }

  void showLocationPins10() {
    var sourceposition = LatLng(24.877868383099944, 67.19121415620619);

    var destinationPosition = LatLng(24.877868383099944, 67.19121415620619);

    _marker.add(Marker(
      markerId: MarkerId('sourcePosition'),
      position: sourceposition,
    ));

    _marker.add(
      Marker(
        markerId: MarkerId('destinationPosition'),
        position: destinationPosition,
      ),
    );
  }

  void updatePinsOnMap10() async {
    CameraPosition cameraPosition = CameraPosition(
        zoom: 15,
        tilt: 80,
        bearing: 30,
        target: LatLng(24.877868383099944, 67.19121415620619));

    final GoogleMapController controller = await _controller.future;

    controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));

    var sourcePosition = LatLng(24.877868383099944, 67.19121415620619);

    setState(() {
      _marker.removeWhere((marker) => marker.mapsId.value == 'sourcePosition');

      _marker.add(Marker(
        markerId: MarkerId('sourcePosition'),
        position: sourcePosition,
      ));
    });
  }

  void showLocationPins15() {
    var sourceposition = LatLng(24.881389411395155, 67.17254276078067);

    var destinationPosition = LatLng(24.881389411395155, 67.17254276078067);

    _marker.add(Marker(
      markerId: MarkerId('sourcePosition'),
      position: sourceposition,
    ));

    _marker.add(
      Marker(
        markerId: MarkerId('destinationPosition'),
        position: destinationPosition,
      ),
    );
  }

  void updatePinsOnMap15() async {
    CameraPosition cameraPosition = CameraPosition(
        zoom: 15,
        tilt: 80,
        bearing: 30,
        target: LatLng(24.881389411395155, 67.17254276078067));

    final GoogleMapController controller = await _controller.future;

    controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));

    var sourcePosition = LatLng(24.881389411395155, 67.17254276078067);

    setState(() {
      _marker.removeWhere((marker) => marker.mapsId.value == 'sourcePosition');

      _marker.add(Marker(
        markerId: MarkerId('sourcePosition'),
        position: sourcePosition,
      ));
    });
  }

  void showLocationPins20() {
    var sourceposition = LatLng(24.87807965574762, 67.18329064275059);

    var destinationPosition = LatLng(24.87807965574762, 67.18329064275059);

    _marker.add(Marker(
      markerId: MarkerId('sourcePosition'),
      position: sourceposition,
    ));

    _marker.add(
      Marker(
        markerId: MarkerId('destinationPosition'),
        position: destinationPosition,
      ),
    );
  }

  void updatePinsOnMap20() async {
    CameraPosition cameraPosition = CameraPosition(
        zoom: 15,
        tilt: 80,
        bearing: 30,
        target: LatLng(24.87807965574762, 67.18329064275059));

    final GoogleMapController controller = await _controller.future;

    controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));

    var sourcePosition = LatLng(24.87807965574762, 67.18329064275059);

    setState(() {
      _marker.removeWhere((marker) => marker.mapsId.value == 'sourcePosition');

      _marker.add(Marker(
        markerId: MarkerId('sourcePosition'),
        position: sourcePosition,
      ));
    });
  }

  void updatePinsOnMap30() async {
    CameraPosition cameraPosition = CameraPosition(
        zoom: 15,
        tilt: 80,
        bearing: 30,
        target: LatLng(24.877441197393534, 67.17968854033359));

    final GoogleMapController controller = await _controller.future;

    controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));

    var sourcePosition = LatLng(24.877441197393534, 67.17968854033359);

    setState(() {
      _marker.removeWhere((marker) => marker.mapsId.value == 'sourcePosition');

      _marker.add(Marker(
        markerId: MarkerId('sourcePosition'),
        position: sourcePosition,
      ));
    });
  }

  void updatePinsOnMap() async {
    CameraPosition cameraPosition = CameraPosition(
        zoom: 15,
        tilt: 80,
        bearing: 30,
        target: LatLng(24.873339750652608, 67.17963575140263));

    final GoogleMapController controller = await _controller.future;

    controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));

    var sourcePosition = LatLng(24.873339750652608, 67.17963575140263);
    var sourcePosition30 = LatLng(24.877441197393534, 67.17968854033359);
    var sourcePosition20 = LatLng(24.87807965574762, 67.18329064275059);
    var sourcePosition15 = LatLng(24.881389411395155, 67.17254276078067);
    var sourcePosition10 = LatLng(24.877868383099944, 67.19121415620619);

    setState(() {
      _marker.removeWhere((marker) => marker.mapsId.value == 'sourcePosition');

      // _marker.add(Marker(
      //   markerId: MarkerId(
      //     'sourcePosition',
      //   ),
      //   position: sourcePosition,
      // ));

      _marker.addAll([
        Marker(
          markerId: MarkerId(
            'sourcePosition',
          ),
          position: sourcePosition,
        ),
        Marker(
          markerId: MarkerId(
            'sourcePosition30',
          ),
          position: sourcePosition30,
        ),
        Marker(
          markerId: MarkerId(
            'sourcePosition20',
          ),
          position: sourcePosition20,
        ),
        Marker(
          markerId: MarkerId(
            'sourcePosition15',
          ),
          position: sourcePosition15,
        ),
        Marker(
          markerId: MarkerId(
            'sourcePosition10',
          ),
          position: sourcePosition10,
        ),
      ]);
    });
  }

  @override
  Widget build(BuildContext context) {
    CameraPosition initialCameraPosition = CameraPosition(
      zoom: 15,
      tilt: 80,
      bearing: 30,
      target: currentLocation != null
          ? LatLng(currentLocation!.latitude ?? 0.0,
              currentLocation!.longitude ?? 0.0)
          : LatLng(0.0, 0.0),
    );

    return currentLocation == null
        ? Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: CircularProgressIndicator(),
          )
        : SafeArea(
            child: Scaffold(
              body: Stack(
                children: [
                  GoogleMap(
                    myLocationButtonEnabled: true,
                    compassEnabled: true,
                    markers: _marker,
                    polylines: _polylines,
                    mapType: MapType.normal,
                    initialCameraPosition: initialCameraPosition,
                    onMapCreated: (GoogleMapController controller) {
                      _controller.complete(controller);

                      showLocationPins();
                    },
                  ),
                  Positioned(
                      bottom: 20,
                      child: ElevatedButton(
                          onPressed: () {
                            updatePinsOnMap10();
                          },
                          child: Text("10 Mil"))),
                  Positioned(
                      left: 80,
                      bottom: 20,
                      child: ElevatedButton(
                          onPressed: () {
                            updatePinsOnMap15();
                          },
                          child: Text("15 Mil"))),
                  Positioned(
                      right: 130,
                      bottom: 20,
                      child: ElevatedButton(
                          onPressed: () {
                            updatePinsOnMap20();
                          },
                          child: Text("20 Mil"))),
                  Positioned(
                      right: 55,
                      bottom: 20,
                      child: ElevatedButton(
                          onPressed: () {
                            updatePinsOnMap30();
                          },
                          child: Text("30 Mil"))),
                  Positioned(
                      bottom: 60,
                      child: ElevatedButton(
                          onPressed: () {
                            updatePinsOnMap();
                          },
                          child: Text("Current Location"))),
                ],
              ),
            ),
          );
  }

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }
}
