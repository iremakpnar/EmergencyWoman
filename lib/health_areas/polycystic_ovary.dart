import 'package:flutter/material.dart';

class PolycysticOvaryPage extends StatefulWidget {
  const PolycysticOvaryPage({super.key});

  @override
  State<PolycysticOvaryPage> createState() => _PolycysticOvaryPageState();
}

class _PolycysticOvaryPageState extends State<PolycysticOvaryPage> {
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
              "PCOS Bilgilendirme",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        backgroundColor: Color(0xFFFFCDD2), // Arka plan rengi
        elevation: 0, // AppBar'ın gölge efekti
      ),
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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Image.asset('images/polykist.jpg',
              width: 400,
              ),
              SizedBox(height: 16),
              Text(
                'Polikistik Over Sendromu (PCOS)',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Polikistik Over Sendromu (PCOS), kadınlarda sık görülen bir hormonal bozukluktur ve genellikle üreme çağındaki kadınları etkiler. PCOS, yumurtalıklarda çok sayıda küçük kist oluşumu, adet düzensizlikleri ve hormonal dengesizliklerle karakterizedir.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 24),
              Text(
                'Nedenleri:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                '- Hormonal Dengesizlik: Özellikle erkeklik hormonu (androjen) seviyelerinin artışı.',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '- İnsülin Direnci: Kan şekeri seviyelerini düzenleyen insülin hormonuna karşı direnç gelişmesi.',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '- Genetik Faktörler: Ailede PCOS öyküsü olması riski artırabilir.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 24),
              Text(
                'Komplikasyonları:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                '- Diyabet (Tip 2)',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '- Yüksek tansiyon',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '- Kalp hastalıkları',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '- Depresyon ve anksiyete',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '- Rahim kanseri riski',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 24),
              Text(
                'Tedavi:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                '- Yaşam Tarzı Değişiklikleri: Sağlıklı beslenme ve düzenli egzersiz kilo kontrolüne yardımcı olur.',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '- İlaç Tedavisi: Hormonal doğum kontrol hapları, insülin duyarlılığını artırıcı ilaçlar ve tüylenme için çeşitli ilaçlar kullanılabilir.',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '- Doğurganlık Tedavisi: Hamile kalmada zorluk çekenler için ovülasyon indüksiyonu ve diğer yardımcı üreme teknikleri uygulanabilir.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 24),
              Text(
                'PCOS, erken teşhis ve doğru tedaviyle kontrol altına alınabilir. Semptomlarınız varsa bir kadın doğum uzmanına danışmanız önemlidir.',
                style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
