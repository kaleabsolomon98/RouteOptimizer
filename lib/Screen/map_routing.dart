import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:webview/Util/constant.dart';

class MapRouting extends StatefulWidget {
  const MapRouting({Key? key}) : super(key: key);

  @override
  _MapRoutingState createState() => _MapRoutingState();
}

class _MapRoutingState extends State<MapRouting> {
// created controller to display Google Maps
  final Completer<GoogleMapController> _controller = Completer();
//on below line we have set the camera position
  static const CameraPosition _kGoogle = CameraPosition(
    target: LatLng(8.998177979529629, 38.786710761487484),
    zoom: 5,
  );

  final Set<Marker> _markers = {};
  final Set<Polyline> _polyline = {};

// list of locations to display polylines
  List<LatLng> latLen = const [
    LatLng(8.998177979529629, 38.786710761487484),
    LatLng(17.679079, 43.069710),
    LatLng(15.850000, 45.949997),
    LatLng(13.879999, 39.629997),
    LatLng(7.166700, 39.833298)
  ];

  @override
  void initState() {
    super.initState();

    // declared for loop for various locations
    for (int i = 0; i < latLen.length; i++) {
      _markers.add(
          // added markers
          Marker(
        markerId: MarkerId(i.toString()),
        position: latLen[i],
        icon: BitmapDescriptor.defaultMarker,
      ));
      setState(() {});
      _polyline.add(Polyline(
        polylineId: const PolylineId('1'),
        points: latLen,
        color: kPrimaryColor,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Route Optimizer"),
      body: SafeArea(
        child: GoogleMap(
          //given camera position
          initialCameraPosition: _kGoogle,
          // on below line we have given map type
          mapType: MapType.normal,
          // specified set of markers below
          markers: _markers,
          // on below line we have enabled location
          myLocationEnabled: true,
          myLocationButtonEnabled: true,
          // on below line we have enabled compass location
          compassEnabled: true,
          // on below line we have added polylines
          polylines: _polyline,
          // displayed google map
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
      ),
    );
  }
}
