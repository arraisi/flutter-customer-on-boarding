import 'package:flutter/material.dart';
import 'package:tabeldatafluttertemplate/src/ui/components/main_shadow.dart';
import 'package:tabeldatafluttertemplate/src/utils/app_theme.dart';
import 'package:tabeldatafluttertemplate/src/ui/components/main_textfield.dart';
import 'package:tabeldatafluttertemplate/src/ui/components/main_button.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class BranchScreen extends StatefulWidget {
  @override
  _BranchScreenState createState() => _BranchScreenState();
}

class _BranchScreenState extends State<BranchScreen> {
  GoogleMapController mapController;

  String dropdownValue = "Bank Bengkulu";

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
    MarkerId('marker_id_2'): Marker(
      markerId: MarkerId('marker_id_2'),
      position: LatLng(-6.923812041805667, 107.66140943054393),
      infoWindow: InfoWindow(title: 'PT Tabel Data Informatika'),
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
    return SafeArea(
      top: false,
      bottom: true,
      child: Scaffold(
        body: Column(children: [
          Expanded(
            child: Stack(children: [
              GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition: CameraPosition(
                    target: LatLng(-6.2312221828789855, 106.8453850978705),
                    zoom: 16.0,
                    bearing: 30),
                mapType: MapType.normal,
                markers: Set<Marker>.of(markers.values),
              ),
            ]),
          ),
          Container(
              height: 280,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12.withOpacity(0.1),
                        blurRadius: 5,
                        offset: Offset(0, -5))
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Branch", style: AppTheme.textTheme.headline),

                    SizedBox(height: 12),

                    Text("Select the nearest branch from your place",
                        style: AppTheme.textTheme.subtitle),

                    SizedBox(height: 20),

                    // DROP DOWN BUTTON
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white,
                          boxShadow: MainShadow(AppTheme.mainGreen)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: DropdownButton<String>(
                          isExpanded: true,
                          value: dropdownValue,
                          icon: const Icon(Icons.arrow_drop_down_circle_outlined, color: AppTheme.mainGreen,),
                          iconSize: 24,
                          elevation: 16,
                          style: const TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87),
                          underline: Container(
                            height: 0,
                            color: Colors.transparent,
                          ),
                          onChanged: (String newValue) {
                            setState(() {
                              dropdownValue = newValue;
                              print(dropdownValue);
                              switch (dropdownValue) {
                                case "Bank Bengkulu":
                                  // do something
                                  moveToBankBengkulu();
                                  break;
                                case "PT Tabel Data Informatika":
                                  // do something else
                                  moveToTDI();
                                  break;
                              }
                            });
                          },
                          items: <String>[
                            'Bank Bengkulu',
                            'PT Tabel Data Informatika'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ),

                    SizedBox(height: 28),

                    MainButton("NEXT", () {}),
                  ],
                ),
              ))
        ]),
      ),
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    mapController.showMarkerInfoWindow(MarkerId('marker_id_1'));
  }

  void moveToBankBengkulu() {
    mapController.moveCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: LatLng(-6.2312221828789855, 106.8453850978705),
        zoom: 16.0,
        bearing: 30)));
    mapController.showMarkerInfoWindow(MarkerId('marker_id_1'));
  }

  void moveToTDI() {
    mapController.moveCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: LatLng(-6.923812041805667, 107.66140943054393),
        zoom: 16.0,
        bearing: 30)));
    mapController.showMarkerInfoWindow(MarkerId('marker_id_2'));
  }
}
