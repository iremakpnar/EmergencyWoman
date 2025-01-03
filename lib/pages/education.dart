import 'package:flutter/material.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({super.key});

  @override
  State<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  final List<Map<String, String>> egitimler = [
    {
      "egitimAdi": "Kadın Girişimciler için İş Planı Hazırlama",
      "tarih": "10 Ocak 2025",
      "saat": "10:00",
      "yer": "İstanbul Ticaret Odası, Kadıköy",
    },
    {
      "egitimAdi": "Kadınlar için Liderlik ve İletişim Eğitimi",
      "tarih": "15 Ocak 2025",
      "saat": "14:00",
      "yer": "Ankara Çağdaş Sanatlar Merkezi",
    },
    {
      "egitimAdi": "Dijital Pazarlama ve Sosyal Medya Eğitimi",
      "tarih": "1 Şubat 2025",
      "saat": "11:00",
      "yer": "Online (Zoom Platformu)",
    },
    {
      "egitimAdi": "Kendi İşini Kurma ve Girişimcilik Eğitimi",
      "tarih": "5 Şubat 2025",
      "saat": "13:00",
      "yer": "Bursa Nilüfer Gençlik Merkezi",
    },
    {
      "egitimAdi": "Finansal Okuryazarlık ve Bütçe Yönetimi",
      "tarih": "10 Şubat 2025",
      "saat": "15:00",
      "yer": "İzmir Ekonomi Üniversitesi",
    },
    {
      "egitimAdi": "Kadınlar için Teknoloji ve Kodlama Eğitimi",
      "tarih": "20 Şubat 2025",
      "saat": "10:00",
      "yer": "İstanbul Bilgi Üniversitesi",
    },
    {
      "egitimAdi": "Etkili Sunum Teknikleri ve Hitabet Eğitimi",
      "tarih": "25 Şubat 2025",
      "saat": "14:00",
      "yer": "Antalya Kültür Merkezi",
    },
    {
      "egitimAdi": "Kadın Sağlığı ve Psikolojik Güçlenme",
      "tarih": "5 Mart 2025",
      "saat": "13:30",
      "yer": "Online (Microsoft Teams)",
    },
    {
      "egitimAdi": "E-Ticaret ve Online Satış Teknikleri",
      "tarih": "12 Mart 2025",
      "saat": "11:00",
      "yer": "İzmir Ticaret Odası",
    },
    {
      "egitimAdi": "Networking ve İş İlişkileri Yönetimi",
      "tarih": "20 Mart 2025",
      "saat": "16:00",
      "yer": "Ankara TOBB Ekonomi ve Teknoloji Üniversitesi",
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
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
              padding: const EdgeInsets.only(top:30.0,),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () {
                      Navigator.pop(context); // Geri gitmek için pop işlemi
                    },
                    padding: EdgeInsets.zero, // Sol taraftan boşluk bırakmaz
                  ),
                   SizedBox(width: 10,),
                  Text(
                      "Kadınlara Yönelik Eğitimler",
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.pink,
                      ),
                    ),
                ],
              ),
            ),
            // Eğitim listesi
            Expanded(
              child: ListView.builder(
                itemCount: egitimler.length,
                itemBuilder: (context, index) {
                  final egitim = egitimler[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            egitim["egitimAdi"]!,
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.pink,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text("Tarih: ${egitim["tarih"]}"),
                          Text("Saat: ${egitim["saat"]}"),
                          Text("Yer: ${egitim["yer"]}"),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );

  }
}
