import 'package:flutter/material.dart';
import 'package:tabeldatafluttertemplate/src/ui/constant/constant.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tabeldatafluttertemplate/src/utils/app_theme.dart';

class ExampleScreen extends StatefulWidget {
  @override
  _ExampleScreenState createState() => _ExampleScreenState();
}

class _ExampleScreenState extends State<ExampleScreen> {
  GoogleMapController mapController;

  Map<MarkerId, Marker> markers = <MarkerId, Marker>{
    MarkerId('marker_id_1'): Marker(
      markerId: MarkerId('marker_id_1'),
      position: LatLng(-6.2312221828789855, 106.8453850978705),
      infoWindow: InfoWindow(title: 'Bank Bengkulu'),
      onTap: () {
        //_onMarkerTapped(markerId);
        print('Marker Tapped');
      },
      onDragEnd: (LatLng position) {
        print('Drag Ended');
      },
    ),

    MarkerId('marker_id_1'): Marker(
      markerId: MarkerId('marker_id_1'),
      position: LatLng(-6.923812041805667, 107.66140943054393),
      infoWindow: InfoWindow(title: 'PT TDI'),
      onTap: () {
        //_onMarkerTapped(markerId);
        print('Marker Tapped');
      },
      onDragEnd: (LatLng position) {
        print('Drag Ended');
      },
    ),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Maps Sample App'),
          backgroundColor: Colors.green[700],
        ),
        body: Stack(children: [
          GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition:
                CameraPosition(target: LatLng(-6.2312221828789855, 106.8453850978705), zoom: 16.0, bearing: 30),
            mapType: MapType.normal,
            markers: Set<Marker>.of(markers.values),
            //onMapCreated: (GoogleMapController controller) {
            //  _controller.complete(controller);
            //},
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 28,
              width: 28,
              child: InkWell(
                onTap: moveMap,
                child: Icon(
                  Icons.airplanemode_active,
                  color: AppTheme.mainGreen,
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    mapController.showMarkerInfoWindow(MarkerId('marker_id_1'));
  }

  void moveMap() {
    mapController.moveCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: LatLng(-6.923812041805667, 107.66140943054393),
        zoom: 16.0,
        bearing: 30)));
  }
}
