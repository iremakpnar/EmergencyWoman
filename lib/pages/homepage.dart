import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:emergencywoman/pages/carousel.dart';
import 'package:emergencywoman/pages/map.dart';
import 'package:emergencywoman/pages/user.dart';
import 'package:emergencywoman/widget/live_safe.dart';
import 'package:geolocator/geolocator.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}


Future<void> _getCurrentLocation() async {
  bool serviceEnabled;
  LocationPermission permission;

  // Konum Servislerinin Etkin Olup Olmadığını Kontrol Et
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    print('Konum servisleri devre dışı.');
    return;
  }

  // Konum İzinlerini Kontrol Et ve Gerekirse İsteyin
  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      print('Konum izni reddedildi.');
      return;
    }
  }

  if (permission == LocationPermission.deniedForever) {
    print('Konum izinleri kalıcı olarak reddedildi.');
    return;
  }

  // Mevcut Konumu Al
  Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high);
  print('Mevcut Konum: Lat: ${position.latitude}, Lon: ${position.longitude}');
}


class _HomeState extends State<Home> {
  int _index = 0;
  List pages = [AnaPage(), Map(), User()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Merhaba, İrem",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xffffc2c1), // AppBar'ın arka plan rengini burada belirleyebilirsiniz
      ),
      body: pages[_index], // Burada ana sayfa ve diğer sayfalar gösterilecek

    );
  }
}

class AnaPage extends StatefulWidget {
  const AnaPage({super.key});

  @override
  State<AnaPage> createState() => _AnaPageState();
}

class _AnaPageState extends State<AnaPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth,
      height: screenHeight,
      color: Color(0xffffc2c1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          CustomCarousel(),
          SizedBox(height: 50), //20'ydi deneme yapmak için değer değişikliği yaptım.
          Center(
            child: GestureDetector(
              onTap: () async {
                // Daisy image clicked
                print("ACİL BUTONUNA BASILDI !!");
                await _getCurrentLocation();
              },
              child: CircleAvatar(
                radius: screenWidth * 0.25,
                backgroundColor: Colors.white70,
                child: ClipOval(
                  child: Image.asset(
                    "images/lavender.png",
                    width: screenWidth * 0.35,
                    height: screenWidth * 0.35,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 60,), // Explore LifeSafe kısmını aşağıya kaydırmak için.
          Padding(padding:
          const EdgeInsets.all(8.0),
            child: Text("Güvenli Yaşam" ,
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
            ),
          ),
          LiveSafe(),
        ],
      ),
    );
  }
}

