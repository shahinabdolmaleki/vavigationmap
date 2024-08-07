import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  MapController mapController = MapController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FlutterMap(
      mapController: mapController,
      options: const MapOptions(
        initialCenter:
            LatLng(51.509364, -0.128928), // Center the map over London
        initialZoom: 18,
      ),
      children: [
        TileLayer(
          urlTemplate:
              'https://api.mapbox.com/styles/v1/shahin71/clw7xz9n002pf01qr5cdvdpzx/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1Ijoic2hhaGluNzEiLCJhIjoiY2x3N3hvNXk2MXljcjJxcHluaTJzdmo0dSJ9.ZuSuevfAgR1Ej-s6LlYeyA',
          userAgentPackageName: 'com.example.vavigationmap',
        ),
        const MarkerLayer(
          markers: [
            Marker(
              point: LatLng(51.509364, -0.128928),
              width: 80,
              height: 80,
              child: Icon(
                Icons.navigation,
                size: 50,
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
