import 'package:flutter/material.dart';

class HealthPage extends StatefulWidget {
  const HealthPage({super.key});

  @override
  State<HealthPage> createState() => _HealthPageState();
}

class _HealthPageState extends State<HealthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.5,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFFFCDD2),
                          Color(0xFFEF9A9A),
                        ])),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 3),
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Text(
                      'Spor Motivasyonları ve Alanlar',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Sağlıklı bir yaşam için sporu hayatınıza katabilirsiniz. İşte öneriler:',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        children: [
                          ListTile(
                            leading: Icon(Icons.fitness_center, color: Colors.pink),
                            title: Text('Yoga ve Pilates'),
                            subtitle: Text(
                                'Esneklik ve zihinsel rahatlama için yoga ve pilates kurslarına katılabilirsiniz.'),
                          ),
                          ListTile(
                            leading: Icon(Icons.directions_run, color: Colors.pink),
                            title: Text('Koşu ve Yürüyüş'),
                            subtitle: Text(
                                'Parklarda veya sahil kenarlarında düzenli olarak yürüyüş yapabilirsiniz.'),
                          ),
                          ListTile(
                            leading: Icon(Icons.pool, color: Colors.pink),
                            title: Text('Yüzme'),
                            subtitle: Text('Yüzme hem eğlenceli hem de tüm vücut kaslarını çalıştırır.'),
                          ),
                          ListTile(
                            leading: Icon(Icons.sports, color: Colors.pink),
                            title: Text('Grup Fitness Dersleri'),
                            subtitle: Text(
                                'Zumba, spinning veya dans gibi grup aktiviteleriyle eğlenerek spor yapabilirsiniz.'),
                          ),
                          ListTile(
                            leading: Icon(Icons.park, color: Colors.pink),
                            title: Text('Doğa Sporları'),
                            subtitle: Text(
                                'Hafta sonları trekking, bisiklet sürme gibi aktivitelerle doğanın tadını çıkarın.'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Spor Dışı Etkinlikler',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Kendinizi geliştirmek ve keyifli vakit geçirmek için bu etkinlikleri değerlendirebilirsiniz:',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        children: [
                          ListTile(
                            leading: Icon(Icons.brush, color: Colors.purple),
                            title: Text('Resim ve Sanat Atölyeleri'),
                            subtitle: Text(
                                'Yaratıcılığınızı geliştirmek için resim veya el sanatları kurslarına katılabilirsiniz.'),
                          ),
                          ListTile(
                            leading: Icon(Icons.book, color: Colors.purple),
                            title: Text('Kitap Kulüpleri'),
                            subtitle: Text(
                                'Yeni kitaplar keşfetmek ve tartışmalara katılmak için kitap kulüplerine üye olun.'),
                          ),
                          ListTile(
                            leading: Icon(Icons.cookie, color: Colors.purple),
                            title: Text('Yemek Yapma Kursları'),
                            subtitle: Text(
                                'Yeni tarifler öğrenerek mutfakta zaman geçirmekten keyif alın.'),
                          ),
                          ListTile(
                            leading: Icon(Icons.camera_alt, color: Colors.purple),
                            title: Text('Fotoğrafçılık'),
                            subtitle: Text(
                                'Fotoğrafçılık dersleri alarak anılarınızı en iyi şekilde ölümsüzleştirin.'),
                          ),
                          ListTile(
                            leading: Icon(Icons.music_note, color: Colors.purple),
                            title: Text('Müzik Dersleri'),
                            subtitle: Text(
                                'Bir enstrüman çalmayı öğrenmek için kurslara katılabilirsiniz.'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
