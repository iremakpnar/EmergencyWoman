import 'package:flutter/material.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({super.key});

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  final List<Map<String, String>> events = [
    {
      'event': 'Kadın Liderlik Programları',
      'description': 'Kadınların liderlik becerilerini geliştirmek amacıyla iş dünyasında, toplumsal yaşamda ve siyasette liderlik pozisyonlarına ulaşmalarına yardımcı olan eğitimler.',
      'date': '15 Şubat 2025',
      'icon' : 'icons/networking.png',
    },
    {
      'event': 'Kadın İnovasyon ve Teknoloji Seminerleri',
      'description': 'Teknoloji alanında kadınların yerini artırmak için yazılım geliştirme, yapay zeka, dijital pazarlama ve veri bilimi gibi konularda eğitimler.',
      'date': '5 Mart 2025',
      'icon' : 'icons/technology.png',
    },
    {
      'event': 'Kadınların Yaratıcı Yazarlık Atölyeleri',
      'description': 'Kadınların içsel düşüncelerini, hayallerini ve hikayelerini yazılı olarak ifade etmelerini sağlayan yazarlık atölyeleri.',
      'date': '20 Mart 2025',
      'icon' : 'icons/creative.png',
    },
    {
      'event': 'Kadın İçin Psikolojik Destek ve Terapiler',
      'description': 'Kadınların psikolojik sağlığını desteklemek amacıyla terapi seansları, stres yönetimi ve kişisel gelişim çalışmaları düzenlenir.',
      'date': '1 Nisan 2025',
      'icon' : 'icons/happiness.png',
    },
    {
      'event': 'Kadın Hakları Savunuculuğu Eğitimleri',
      'description': 'Kadın hakları konusunda farkındalık yaratmak ve kadınların eşit haklarını savunmalarını sağlamak amacıyla eğitimler ve seminerler düzenlenir.',
      'date': '10 Nisan 2025',
      'icon' : 'icons/leading_ladies.png',
    },
    {
      'event': 'Kadın Sporcular için Mentorluk Programları',
      'description': 'Kadın sporcuların kariyerlerini desteklemek amacıyla deneyimli mentorlardan rehberlik sağlanan bir program.',
      'date': '12 Mayıs 2025',
      'icon' : 'icons/networking.png',
    },
    {
      'event': 'Kadın Kültürel Değişim Programları',
      'description': 'Kadınların farklı kültürleri tanımaları ve dünya çapındaki kadınlarla etkileşimde bulunmaları için düzenlenen yurtdışı gezileri ve kültürel değişim programları.',
      'date': '25 Mayıs 2025',
      'icon' : 'icons/people.png',
    },
    {
      'event': 'Kadınlar İçin Kişisel Gelişim ve Yaşam Koçluğu',
      'description': 'Kadınların kişisel gelişimlerine odaklanarak hedef belirleme, zaman yönetimi, öz güven geliştirme gibi konularda rehberlik sunan etkinlikler.',
      'date': '5 Haziran 2025',
      'icon' : 'icons/self.png',
    },
    {
      'event': 'Kadın Çiftçiler ve Tarımcılar İçin Eğitimler',
      'description': 'Kadınların tarımda daha aktif rol almasını sağlayacak organik tarım, üretim yöntemleri ve sürdürülebilir tarım hakkında eğitimler.',
      'date': '15 Temmuz 2025',
      'icon' : 'icons/farmer.png',
    },
    {
      'event': 'Kadınların Yaratıcı Sanat Çalışmaları',
      'description': 'Kadınların resim, heykel, müzik, dans ve diğer sanatsal aktivitelerle kendilerini ifade etmelerini sağlayan yaratıcı etkinlikler.',
      'date': '1 Ağustos 2025',
      'icon' : 'icons/painting.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kadınlara Yönelik Etkinlikler'),
        backgroundColor: Color(0xFFFFCDD2),  // Arka plan rengi
        elevation: 0,
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
        child: ListView.builder(
          itemCount: events.length,
          itemBuilder: (context, index) {
            final event = events[index];
            return Card(
              margin: EdgeInsets.all(10),
              child: ListTile(
                leading: Image.asset(event['icon']!,width: 50, height: 50,),
                title: Text(event['event']! , style: TextStyle(fontSize: 20),),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(event['description']!, style: TextStyle(fontSize: 18),),
                    SizedBox(height: 5),
                    Text(
                      'Tarih: ${event['date']}',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
