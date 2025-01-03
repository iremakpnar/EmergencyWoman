import 'package:flutter/material.dart';

class SportPage extends StatefulWidget {
  const SportPage({super.key});

  @override
  State<SportPage> createState() => _SportPageState();
}

class _SportPageState extends State<SportPage> {
  final List<Map<String, dynamic>> activities = [
    {
      'icon': Icons.fitness_center,  // Doğrudan IconData kullanıyoruz
      'title': 'Yoga ve Pilates',
      'subtitle': 'Esneklik ve zihinsel rahatlama için yoga ve pilates kurslarına katılabilirsiniz.',
    },
    {
      'icon': Icons.directions_run,
      'title': 'Koşu ve Yürüyüş',
      'subtitle': 'Parklarda veya sahil kenarlarında düzenli olarak yürüyüş yapabilirsiniz.',
    },
    {
      'icon': Icons.pool,
      'title': 'Yüzme',
      'subtitle': 'Yüzme hem eğlenceli hem de tüm vücut kaslarını çalıştırır.',
    },
    {
      'icon': Icons.sports,
      'title': 'Grup Fitness Dersleri',
      'subtitle': 'Zumba, spinning veya dans gibi grup aktiviteleriyle eğlenerek spor yapabilirsiniz.',
    },
    {
      'icon': Icons.park,
      'title': 'Doğa Sporları',
      'subtitle': 'Hafta sonları trekking, bisiklet sürme gibi aktivitelerle doğanın tadını çıkarın.',
    },
  ];

  final List<Map<String, dynamic>> nonSports = [
    {
      'icon': Icons.brush,  // Doğrudan IconData kullanıyoruz
      'title': 'Resim ve Sanat Atölyeleri',
      'subtitle': 'Yaratıcılığınızı geliştirmek için resim veya el sanatları kurslarına katılabilirsiniz.',
    },
    {
      'icon': Icons.book,
      'title': 'Kitap Kulüpleri',
      'subtitle': 'Yeni kitaplar keşfetmek ve tartışmalara katılmak için kitap kulüplerine üye olun.',
    },
    {
      'icon': Icons.cookie,
      'title': 'Yemek Yapma Kursları',
      'subtitle': 'Yeni tarifler öğrenerek mutfakta zaman geçirmekten keyif alın.',
    },
    {
      'icon': Icons.camera_alt,
      'title': 'Fotoğrafçılık',
      'subtitle': 'Fotoğrafçılık dersleri alarak anılarınızı en iyi şekilde ölümsüzleştirin.',
    },
    {
      'icon': Icons.music_note,
      'title': 'Müzik Dersleri',
      'subtitle': 'Bir enstrüman çalmayı öğrenmek için kurslara katılabilirsiniz.',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
            // Başlık kısmı
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Row(
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
                    "Spor Motivasyonları ve Alanlar ",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            // Eğitim listesi
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'Sağlıklı bir yaşam için sporu hayatınıza katabilirsiniz. İşte öneriler:',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  // Spor aktiviteleri
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: activities.length,
                    itemBuilder: (context, index) {
                      final activity = activities[index];
                      return ListTile(
                        leading: Icon(
                          activity['icon'] as IconData,
                          color: Colors.pink,
                          size: 30,
                        ),
                        title: Text(
                          activity['title'] as String,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        subtitle: Text(
                          activity['subtitle'] as String,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0,),
                    child: Text(
                      'Spor Dışı Etkinlikler',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'Kendinizi geliştirmek ve keyifli vakit geçirmek için bu etkinlikleri değerlendirebilirsiniz:',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  // Spor dışı etkinlikler
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: nonSports.length,
                    itemBuilder: (context, index) {
                      final nonSport = nonSports[index];
                      return ListTile(
                        leading: Icon(
                          nonSport['icon'] as IconData,
                          color: Colors.purple,
                          size: 30,
                        ),
                        title: Text(
                          nonSport['title'] as String,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        subtitle: Text(
                          nonSport['subtitle'] as String,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
