import 'package:flutter/material.dart';

class SportPage extends StatefulWidget {
  const SportPage({super.key});

  @override
  State<SportPage> createState() => _SportPageState();
}

class _SportPageState extends State<SportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                    Color(0xFFFFCDD2),
                    Color(0xFFEF9A9A),
                    ]
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top:30.0, bottom: 20.0,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      'Spor Motivasyonları ve Alanlar',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Sağlıklı bir yaşam için sporu hayatınıza katabilirsiniz. İşte öneriler:',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        final activities = [
                          {
                            'icon': Icons.fitness_center,
                            'title': 'Yoga ve Pilates',
                            'subtitle':
                            'Esneklik ve zihinsel rahatlama için yoga ve pilates kurslarına katılabilirsiniz.',
                          },
                          {
                            'icon': Icons.directions_run,
                            'title': 'Koşu ve Yürüyüş',
                            'subtitle':
                            'Parklarda veya sahil kenarlarında düzenli olarak yürüyüş yapabilirsiniz.',
                          },
                          {
                            'icon': Icons.pool,
                            'title': 'Yüzme',
                            'subtitle':
                            'Yüzme hem eğlenceli hem de tüm vücut kaslarını çalıştırır.',
                          },
                          {
                            'icon': Icons.sports,
                            'title': 'Grup Fitness Dersleri',
                            'subtitle':
                            'Zumba, spinning veya dans gibi grup aktiviteleriyle eğlenerek spor yapabilirsiniz.',
                          },
                          {
                            'icon': Icons.park,
                            'title': 'Doğa Sporları',
                            'subtitle':
                            'Hafta sonları trekking, bisiklet sürme gibi aktivitelerle doğanın tadını çıkarın.',
                          },
                        ];

                        return ListTile(
                          leading: Icon(
                            activities[index]['icon'] as IconData,
                            color: Colors.pink,
                            size: 30,
                          ),
                          title: Text(
                            activities[index]['title'] as String,
                            style: TextStyle(
                              color: Colors.black, // Başlık metninin rengi
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          subtitle: Text(
                            activities[index]['subtitle'] as String,
                            style: TextStyle(
                              color: Colors.black, // Alt başlık metninin rengi
                              fontSize: 17, // Alt başlık boyutu
                            ),
                          ),
                        );
                      },
                    ),

                    SizedBox(height: 20),
                    Text(
                      'Spor Dışı Etkinlikler',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
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
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        final nonSports = [
                          {
                            'icon': Icons.brush,
                            'title': 'Resim ve Sanat Atölyeleri',
                            'subtitle':
                            'Yaratıcılığınızı geliştirmek için resim veya el sanatları kurslarına katılabilirsiniz.',
                          },
                          {
                            'icon': Icons.book,
                            'title': 'Kitap Kulüpleri',
                            'subtitle':
                            'Yeni kitaplar keşfetmek ve tartışmalara katılmak için kitap kulüplerine üye olun.',
                          },
                          {
                            'icon': Icons.cookie,
                            'title': 'Yemek Yapma Kursları',
                            'subtitle':
                            'Yeni tarifler öğrenerek mutfakta zaman geçirmekten keyif alın.',
                          },
                          {
                            'icon': Icons.camera_alt,
                            'title': 'Fotoğrafçılık',
                            'subtitle':
                            'Fotoğrafçılık dersleri alarak anılarınızı en iyi şekilde ölümsüzleştirin.',
                          },
                          {
                            'icon': Icons.music_note,
                            'title': 'Müzik Dersleri',
                            'subtitle':
                            'Bir enstrüman çalmayı öğrenmek için kurslara katılabilirsiniz.',
                          },

                        ];
                        return ListTile(
                          leading: Icon(
                            nonSports[index]['icon'] as IconData,
                            color: Colors.purple,
                            size: 30,
                          ),
                          title: Text(
                            nonSports[index]['title'] as String,
                            style: TextStyle(
                              color: Colors.black, // Başlık metninin rengi
                              fontWeight: FontWeight.bold, // Başlık metni kalın
                              fontSize: 20,
                            ),
                          ),
                          subtitle: Text(
                            nonSports[index]['subtitle'] as String,
                            style: TextStyle(
                              color: Colors.black, // Alt başlık metninin rengi
                              fontSize: 17, // Alt başlık boyutu
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
    }
}
