import 'package:flutter/material.dart';

class ViolancePage extends StatefulWidget {
  const ViolancePage({Key? key}) : super(key: key);

  @override
  State<ViolancePage> createState() => _ViolancePageState();
}

class _ViolancePageState extends State<ViolancePage> {
  final List<Map<String, String>> siddetTurleri = [
    {
      'title': 'Fiziksel Şiddet',
      'description': 'Kadının vücuduna zarar vermek amacıyla yapılan her türlü şiddet (dövme, itme, sıkıştırma, yaralama, vb.)',
    },
    {
      'title': 'Cinsel Şiddet',
      'description': 'Kadına zorla cinsel davranışlarda bulunmak veya cinsel içerikli eylemlerde bulunmak (tecavüz, cinsel taciz, vb.)',
    },
    {
      'title': 'Psikolojik Şiddet',
      'description': 'Kadına duygusal ve psikolojik baskı yaparak kontrol etme, aşağılama, tehdit etme, manipülasyon yapma (hakaret, izolasyon, vb.)',
    },
    {
      'title': 'Ekonomik Şiddet',
      'description': 'Kadının ekonomik bağımsızlığını kısıtlama, para ve mal varlıkları üzerinde kontrol sağlama, kadını maddi olarak bağımlı hale getirme',
    },
    {
      'title': 'Sosyal Şiddet',
      'description': 'Kadını sosyal hayattan izole etme, arkadaş ve aile çevresinden uzaklaştırma, özgürlüğünü kısıtlama',
    },
  ];

  final List<Map<String, String>> siddetleMucadeleOnerileri = [
    {
      'title': 'Toplumda Farkındalık Yaratma',
      'description': 'Kadına yönelik şiddet konusunda toplumu bilinçlendirmek için kampanyalar düzenlenmeli, şiddetin kabul edilemez olduğu vurgulanmalıdır.'
    },
    {
      'title': 'Hukuki Destek ve Koruma',
      'description': 'Kadına yönelik şiddet mağdurlarının yasal haklarını bilmeleri sağlanmalı, şiddet mağdurları için daha hızlı ve etkili hukuki destek mekanizmaları kurulmalıdır.'
    },
    {
      'title': 'Şiddetin Erken Aşamada Tespiti ve Müdahale',
      'description': 'Kadına yönelik şiddet, erken aşamalarda fark edilip engellenmelidir.'
    },
    {
      'title': 'Kadınların Güçlendirilmesi',
      'description': 'Kadınların ekonomik bağımsızlıklarını kazanabilmeleri için iş gücüne katılımları teşvik edilmelidir.'
    },
    {
      'title': 'Medyanın Sorumlu Kullanımı',
      'description': 'Medya, kadına yönelik şiddeti teşvik edici ya da normalleştirici içeriklerden kaçınmalı, kadının güçlendirilmesine yönelik mesajlar yaymalıdır.'
    },
    {
      'title': 'Erkeklerin Farkındalığı',
      'description': 'Erkekler, kadına yönelik şiddetle mücadelede aktif rol almalı ve şiddeti kınamalıdır.'
    },
    {
      'title': 'Destek ve Sığınma Evleri',
      'description': 'Kadınlar için şiddet ortamlarından uzaklaşabilecekleri güvenli sığınma evleri ve sosyal hizmetler sağlanmalıdır.'
    },
    {
      'title': 'Toplumsal Cinsiyet Eşitliği',
      'description': 'Toplumsal cinsiyet eşitliği sağlanarak kadının toplumdaki rolü güçlendirilmeli, erkeklerin ve kadınların eşit haklara sahip olduğu bir toplum inşa edilmelidir.'
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
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20.0,),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 10.0, right: 10.0),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.black),
                      onPressed: () {
                        Navigator.pop(context); // Geri gitmek için pop işlemi
                      },
                    ),
                    SizedBox(width: 30),
                    Text(
                      "Şiddet ve Farkındalık",
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),

              // Liste ve İçerik
              Expanded(
                child: ListView(
                  children: [
                    // Resim
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset(
                        'images/palm.png', // Resim dosya yolunu kontrol edin
                        height: 140,
                        width: 140,
                      ),
                    ),

                    // Şiddet Türleri
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Kadına Yönelik Şiddet Türleri',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                    ...siddetTurleri.map((siddet) {
                      return Card(
                        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        color: Colors.white70,
                        child: ListTile(
                          title: Text(
                            siddet['title']!,
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
                          ),
                          subtitle: Text(siddet['description']! , style: TextStyle(fontSize: 16),),
                        ),
                      );
                    }).toList(),

                    // Şiddetle Mücadele Önerileri
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Kadına Yönelik Şiddetle Mücadele İçin Öneriler',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                    ...siddetleMucadeleOnerileri.map((oneri) {
                      return Card(
                        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        color: Colors.white70,
                        child: ListTile(
                          title: Text(
                            oneri['title']!,
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          subtitle: Text(oneri['description']!,style: TextStyle(fontSize: 16),),
                        ),
                      );
                    }).toList(),
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
