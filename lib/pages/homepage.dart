import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:emergencywoman/pages/carousel.dart';
import 'package:emergencywoman/pages/map.dart';
import 'package:emergencywoman/pages/user.dart';
import 'package:emergencywoman/widget/live_safe.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _index = 0;
  List pages = [AnaPage(), Map(), User()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Merhaba, Nilay",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xffffc2c1), // AppBar'ın arka plan rengini burada belirleyebilirsiniz
      ),
      body: pages[_index], // Burada ana sayfa ve diğer sayfalar gösterilecek
      bottomNavigationBar: CurvedNavigationBar(
        items: [
          Icon(Icons.home, size: 40),
          Image.asset('icons/map.png', width: 40.0, height: 40.0),
          Icon(Icons.account_circle, size: 40),
        ],
        index: _index,
        onTap: (int i) {
          setState(() {
            _index = i;
          });
        },
        color: Color(0xffcb5579),
        backgroundColor: Color(0xff622c4f),
        buttonBackgroundColor: Color(0xffcb5579),
      ),
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
          SizedBox(height: 100), //20'ydi deneme yapmak için değer değişikliği yaptım.
          Center(
            child: GestureDetector(
              onTap: () {
                // Daisy image clicked
                print("ACİL BUTONUNA BASILDI !!");
              },
              child: CircleAvatar(
                radius: screenWidth * 0.35 / 2,
                backgroundColor: Colors.white,
                child: ClipOval(
                  child: Image.asset(
                    "images/daisy1.png",
                    width: screenWidth * 0.35,
                    height: screenWidth * 0.35,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 80,), // Explore LifeSafe kısmını aşağıya kaydırmak için.
          Padding(padding:
          const EdgeInsets.all(8.0),
            child: Text("Explore LiveSafe" ,
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
            ),
          ),
          LiveSafe(),
        ],
      ),
    );
  }
}

