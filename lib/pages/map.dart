/*
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';


class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapsPageState();
}

class _MapsPageState extends State<MapScreen> {
  static const LatLng _pGooglePlex = LatLng(37.4223, -122.0848);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50.0, left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);  // Geri gitme işlemi
              },
              child: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.brown,
              ),
            ),
            const SizedBox(height: 20.0),  // Geri butonu ile harita arasında boşluk
            Expanded(
              child: GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: _pGooglePlex,  // Googleplex'in konumu
                  zoom: 13,  // Harita yakınlaştırma düzeyi
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

 */




import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController _mapController;
  LatLng _currentPosition = const LatLng(0, 0);
  final List<Marker> _markers = [];

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  Future<void> _getCurrentLocation() async {
    LocationPermission permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      return;
    }

    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    setState(() {
      _currentPosition = LatLng(position.latitude, position.longitude);
      _addShelterMarkers();
    });
  }

  void _addShelterMarkers() {
    // Örnek sığınma evi konumları
    const List<LatLng> shelters = [
      LatLng(37.0025, 35.3213), // Adana Sığınma Evi 1 (örnek)
      LatLng(37.0085, 35.3255), // Adana Sığınma Evi 2 (örnek)
      LatLng(37.0153, 35.3207), // Adana Sığınma Evi 3 (örnek)
    ];

    for (var shelter in shelters) {
      _markers.add(
        Marker(
          markerId: MarkerId(shelter.toString()),
          position: shelter,
          infoWindow: InfoWindow(title: "Kadın Sığınma Evi"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Kadın Sığınma Evi")),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(37.0000, 35.3213),
          zoom: 14,
        ),
        onMapCreated: (GoogleMapController controller) {
          _mapController = controller;
        },
        markers: Set<Marker>.of(_markers),
        myLocationEnabled: true,
        myLocationButtonEnabled: true,
      ),
    );
  }
}
