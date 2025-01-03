import 'package:flutter/material.dart';

class ReglPage extends StatefulWidget {
  const ReglPage({super.key});

  @override
  State<ReglPage> createState() => _ReglPageState();
}

class _ReglPageState extends State<ReglPage> {
  final List<Map<String, String>> reglBilgileri = [
    {
      "title": "Nedir?",
      "description": "Regl, kadınların üreme sisteminin bir parçası olan doğal bir süreçtir. Rahim iç tabakasının dökülmesiyle vajinal kanama şeklinde gerçekleşir."
    },
    {
      "title": "Döngü Süresi",
      "description": "Regl döngüsü genellikle 28 gün sürer, ancak 21-35 gün arası normal kabul edilir."
    },
    {
      "title": "Süre",
      "description": "Regl kanaması genellikle 3-7 gün sürer."
    },
    {
      "title": "Başlama ve Bitiş Yaşı",
      "description": "İlk regl (menarş) genellikle 9-15 yaş arasında başlar. Regl dönemi menopoz ile birlikte 45-55 yaş arasında sona erer."
    },
    {
      "title": "Belirtiler",
      "description": "Karın ve bel ağrısı, şişkinlik, ruh hali değişiklikleri, göğüslerde hassasiyet."
    },
    {
      "title": "Döngü Aşamaları",
      "description": "Menstrüasyon, Foliküler Faz, Ovulasyon, Luteal Faz."
    },
    {
      "title": "Hijyen",
      "description": "Regl döneminde hijyenik ped, tampon veya menstrual kap gibi ürünler kullanılır. Bu ürünlerin düzenli değiştirilmesi önemlidir."
    },
    {
      "title": "Düzensizlik",
      "description": "Regl düzensizliği stres, hormonal değişiklikler, aşırı egzersiz veya sağlık sorunlarından kaynaklanabilir."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Navigator.pop(context);
              },
              padding: EdgeInsets.zero,
            ),
            SizedBox(width: 10),
            Text(
              "Regl Bilgilendirme",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        backgroundColor: Color(0xFFFFCDD2),
        elevation: 0,
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
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  'images/regl.jpg',
                  height: 300.0,
                  fit: BoxFit.cover,
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(16.0),
                itemCount: reglBilgileri.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    child: ListTile(
                      leading: Icon(Icons.info, color: Colors.pink),
                      title: Text(
                        reglBilgileri[index]['title']!,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        reglBilgileri[index]['description']!,
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
