import 'package:flutter/material.dart';

class HygienePage extends StatefulWidget {
  const HygienePage({super.key});

  @override
  State<HygienePage> createState() => _HygienePageState();
}

class _HygienePageState extends State<HygienePage> {
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
              "Vajinal Sağlık ve Bakım",
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
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('images/hygiene.jpg'),
                const SizedBox(height: 16),
                const Text(
                  'Vajinal Sağlık ve Bakım',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.pinkAccent,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Vajinal sağlık ve bakım, vajinanın doğal dengesini koruyarak enfeksiyonlardan, tahrişten ve diğer sağlık sorunlarından kaçınmayı amaçlar. İşte temel unsurlar:',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 16),
                ..._buildListItems(),
                const SizedBox(height: 16),
                const Text(
                  'Vajinal sağlık, genel üreme sağlığını korumak, enfeksiyonlardan kaçınmak ve yaşam kalitesini artırmak için önemlidir.',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildListItems() {
    final List<Map<String, String>> items = [
      {
        'title': 'Hijyen',
        'description': 'Genital bölgenin temizliğine özen göster, parfümlü ürünlerden kaçın.',
      },
      {
        'title': 'Doğru İç Çamaşırı Seçimi',
        'description': 'Pamuklu ve nefes alabilen iç çamaşırları tercih et.',
      },
      {
        'title': 'pH Dengesi',
        'description': 'Vajinanın doğal pH dengesini bozacak ürünlerden uzak dur.',
      },
      {
        'title': 'Cinsel Sağlık',
        'description': 'Prezervatif kullanarak cinsel yolla bulaşan hastalıklardan korun.',
      },
      {
        'title': 'Genital Bölgeyi Kuru Tutma',
        'description': 'Nemli ortamlar mantar enfeksiyonlarına yol açabilir.',
      },
      {
        'title': 'Düzenli Jinekolojik Kontroller',
        'description': 'Herhangi bir belirti olmasa bile düzenli doktor kontrolüne git.',
      },
      {
        'title': 'Vajinanın Doğal Temizliği',
        'description': 'Vajina kendini temizleyen bir organdır, vajinal duş gibi uygulamalardan kaçın.',
      },
      {
        'title': 'Beslenme ve Su Tüketimi',
        'description': 'Sağlıklı bir diyet ve yeterli su tüketimi vajinal sağlık için önemlidir.',
      },
    ];

    return items.map((item) => _buildListItem(item['title']!, item['description']!)).toList();
  }

  Widget _buildListItem(String title, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.pink),
          ),
          const SizedBox(height: 4),
          Text(
            description,
            style: const TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}