import 'package:flutter/material.dart';

class BreastCancer extends StatefulWidget {
  const BreastCancer({super.key});

  @override
  State<BreastCancer> createState() => _BreastCancerState();
}

class _BreastCancerState extends State<BreastCancer> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                "Meme Kanseri Bilgilendirme",
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
            padding: const EdgeInsets.only(top: 10.0, left: 10.0,right: 10.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Meme Kanseri ve Korunma Yöntemleri",
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Risk Faktörleri:",
                    style:
                    TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "- Ailede meme kanseri öyküsü.\n"
                        "- İleri yaş.\n"
                        "- Sigara, alkol kullanımı.\n"
                        "- Obezite ve hareketsizlik.",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Korunma Yöntemleri:",
                    style:
                    TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "- 20 yaşından itibaren kendi kendine meme muayenesi.\n"
                        "- 40 yaş sonrası düzenli mamografi.\n"
                        "- Sağlıklı beslenme ve düzenli egzersiz.\n"
                        "- Sigara ve alkolden uzak durma.",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Erken Teşhis:",
                    style:
                    TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Erken teşhis için düzenli doktor kontrolleri hayati önem taşır.",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  SizedBox(height: 16),
                  Image.asset('images/memekanser.jpg'),
                  SizedBox(height: 16),
                  Text(
                    "Kendi Kendine Meme Kontrolü Adımları:",
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "1. Aynanın karşısında, kollar serbest bir şekilde memelerinizi gözlemleyin.\n"
                        "2. Kollarınızı kaldırarak memelerinizi şekil ve simetri açısından inceleyin.\n"
                        "3. Parmak uçlarınızı kullanarak memelerinizi ve koltuk altlarınızı dikkatlice yoklayın.\n"
                        "4. Herhangi bir kitle, şişlik veya değişiklik fark ederseniz doktorunuza başvurun.",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
