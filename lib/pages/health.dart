import 'package:flutter/material.dart';
import 'package:emergencywoman/health_areas/breast_cancer.dart';
import 'package:emergencywoman/health_areas/regl.dart';
import 'package:emergencywoman/health_areas/menopouse.dart';
import 'package:emergencywoman/health_areas/polycystic_ovary.dart';
import 'package:emergencywoman/health_areas/hygiene.dart';

class HealthPage extends StatelessWidget {
  const HealthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Geri tuşunu kapatmak için
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Navigator.pop(context); // Geri gitmek için pop işlemi
              },
              padding: EdgeInsets.zero, // Sol taraftan boşluk bırakmaz
            ),
            SizedBox(width: 10),
            Text(
              "Kadınlarda Sağlık",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        backgroundColor: Color(0xFFFFCDD2),  // Arka plan rengi
        elevation: 0, // AppBar'ın gölge efekti
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFFFCDD2),
                Color(0xFFEF9A9A),
              ],
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
              ),
              SizedBox(height: 20), // Butonlar arasında boşluk

              // Butonlar
              Container(
                width: double.infinity,
                height: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BreastCancer()), // BreastCancer sayfasına geçiş
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white70,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'icons/breast_cancer.png',
                        width: 90,
                        height: 90,
                      ),
                      SizedBox(width: 10),
                      Padding(
                        padding: const EdgeInsets.only(top:15.0,),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Meme Kanseri ve Korunma \n Yöntemleri",
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.pink,
                              ),
                            ),
                            SizedBox(height: 15,),
                            Text(
                              "Meme kanseri, meme dokusundaki\nhücrelerin kontrolsüz çoğalmasıdır. \n Erken teşhis hayat kurtarır; ",
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),

                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),

              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenopousePage()), // BreastCancer sayfasına geçiş
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white70,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'icons/menopause.png',
                        width: 90,
                        height: 90,
                      ),
                      SizedBox(width: 10.0,),
                      Padding(
                        padding: const EdgeInsets.only(top:15.0,),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Menopoz",
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.pink,
                              ),
                            ),
                            SizedBox(height: 15,),
                            Text(
                              "Menopoz, kadının adet döngüsünün\ndoğal olarak sona erdiği dönemdir.\nGenellikle 45-55 yaş arasında \ngörülür ve ...",
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20), // Butonlar arasında boşluk
              Container(
                width: double.infinity,
                height: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReglPage()), // BreastCancer sayfasına geçiş
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white70,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'icons/menstruation.png',
                        width: 90,
                        height: 90,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:15.0,),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Regl Döngüsü",
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.pink,
                              ),
                            ),
                            SizedBox(height: 15,),
                            Text(
                              "Regl, rahim duvarının dökülerek\nvajinal yolla atılmasıdır.\nOrtalama 28 günde bir \ngerçekleşir ve...",
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PolycysticOvaryPage()), // BreastCancer sayfasına geçiş
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white70,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'icons/cervical_cancer.png',
                        width: 80,
                        height: 80,
                      ),
                      SizedBox(width: 10.0,),
                      Padding(
                        padding: const EdgeInsets.only(top:15.0,),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Polikistik Over Sendromu (PCOS)",
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.pink,
                              ),
                            ),
                            SizedBox(height: 15,),
                            Text(
                              "Polikistik over, yumurtalıklarda \nkist oluşumu ve hormonal \ndengesizlikle karakterize bir \ndurumdur.",
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HygienePage()), // BreastCancer sayfasına geçiş
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white70,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'icons/hygiene.png',
                        width: 90,
                        height: 90,
                      ),
                      SizedBox(width: 10.0,),
                      Padding(
                        padding: const EdgeInsets.only(top:15.0,),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Kişisel Bakım",
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.pink,
                              ),
                            ),
                            SizedBox(height: 15,),
                            Text(
                              "Vajinal sağlık, genel sağlığın bir \nparçasıdır.Doğru hijyen alışkanlıkları\nve düzenli kontrollerle sağlıklı\nbir yaşam sürdürülebilir.",
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),

            ],
          ),
        ),
      ),
    );
  }
}