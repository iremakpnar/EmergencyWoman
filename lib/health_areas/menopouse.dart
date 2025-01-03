import 'package:flutter/material.dart';

class MenopousePage extends StatefulWidget {
  const MenopousePage({super.key});

  @override
  State<MenopousePage> createState() => _MenopousePageState();
}

class _MenopousePageState extends State<MenopousePage> {
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
                "Menopoz Nedir?",
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
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/menopouse.jpg',
                      height: 300.0,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Menopoz Nedir?",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Menopoz, bir kadının yaşamında adet döngülerinin kalıcı olarak sona erdiği doğal bir süreçtir. "
                          "Bu durum, yumurtalıkların östrojen ve progesteron gibi üreme hormonlarını üretmeyi durdurmasıyla ortaya çıkar. "
                          "Menopoz genellikle 45-55 yaşları arasında gerçekleşir, ancak bu yaş aralığı kişiden kişiye değişebilir.",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 24),
                    Text(
                      "Menopoz Süreci",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      "1. Perimenopoz: Menopoz öncesi dönemdir. Bu dönemde adet döngüleri düzensizleşir ve menopoz belirtileri başlar. Yıllar sürebilir.",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "2. Menopoz: Bir kadının 12 ay boyunca hiç adet görmediği dönemdir. Bu, menopozun tamamlandığını gösterir.",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "3. Postmenopoz: Menopozdan sonra başlayan dönemdir. Bu dönemde belirtiler hafifleyebilir, ancak uzun vadeli sağlık etkileri (örneğin kemik erimesi) görülebilir.",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 24),
                    Text(
                      "Tedavi ve Yönetim",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      "- Hormon replasman tedavisi (HRT): Hormon seviyelerini dengelemek için östrojen ve progesteron takviyesi yapılabilir.",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "- Yaşam tarzı değişiklikleri: Düzenli egzersiz, dengeli beslenme ve stresi yönetme menopoz belirtilerini hafifletebilir.",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "- Takviyeler: Kalsiyum ve D vitamini takviyeleri kemik sağlığını korumaya yardımcı olabilir.",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "- Bitkisel çözümler: Soya, adaçayı gibi bitkisel ürünler bazı semptomları hafifletebilir.",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 24),
                    Text(
                      "Menopoz, kadın yaşamının doğal bir evresi olup, bu dönemde bir doktorla düzenli iletişim halinde olmak, hem fiziksel hem de duygusal sağlığı korumak açısından önemlidir.",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              ),
        ),
        );
  }
}
