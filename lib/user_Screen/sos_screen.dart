import 'package:emergencywoman/pages/onboard.dart';
import 'package:flutter/material.dart';
import 'package:emergencywoman/user_Screen/user_login_screen.dart';
import 'package:emergencywoman/user_Screen/user_signup_screen.dart';
import 'package:geolocator/geolocator.dart';

class SosScreen extends StatefulWidget {
  @override
  _SosScreenState createState() => _SosScreenState();
}

class _SosScreenState extends State<SosScreen> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Animasyon Kontrolcüsü ve Animasyonu Tanımlama
    _animationController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true); // Sonsuz tekrarla, tersine dönecek şekilde çalıştır

    _animation = Tween<double>(begin: 0.9, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFFCDD2),
              Color(0xFFEF9A9A),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            GestureDetector(
              onTap: () async {
                print('SOS BUTONUNA BASILDI !!!');
                await _getCurrentLocation(); // Konum Bilgisini Al
              },
              child: AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return Transform.scale(
                    scale: _animation.value, // Animasyonun ölçek değeri
                    child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Image.asset(
                          "images/lavender.png",
                          width: 300,
                          height: 300,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Spacer(),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => Onboard()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFCE4EC),
                      foregroundColor: Color(0xff622c4f),
                      shape: CircleBorder(),
                      minimumSize: Size(100, 100),
                    ),
                    child: Text('Başlarken'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
