import 'package:emergencywoman/user_Screen/user_login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:emergencywoman/widget/widget_support.dart';
import 'package:geolocator/geolocator.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> with SingleTickerProviderStateMixin {
  String email = "", password = "", name = "";
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController mailcontroller = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;

  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(reverse: true);
    _animation = Tween<double>(begin: 0.7, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    namecontroller.dispose();
    passwordcontroller.dispose();
    mailcontroller.dispose();
    super.dispose();
  }

  Future<void> registerUser() async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        name = namecontroller.text.trim();
        email = mailcontroller.text.trim();
        password = passwordcontroller.text.trim();
      });

      try {
        UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.green,
            content: Text(
              "Başarıyla kayıt olundu!",
              style: TextStyle(fontSize: 18.0),
            ),
          ),
        );

        Navigator.pushReplacementNamed(context, '/home');
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          showErrorSnackBar('Şifre çok zayıf.');
        } else if (e.code == 'email-already-in-use') {
          showErrorSnackBar('Bu e-posta zaten kullanılıyor.');
        } else if (e.code == 'invalid-email') {
          showErrorSnackBar('Geçersiz e-posta adresi.');
        } else {
          showErrorSnackBar('Bir hata oluştu: ${e.message}');
        }
      } catch (e) {
        showErrorSnackBar('Bir hata oluştu: $e');
      }
    }
  }

  void showErrorSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        content: Text(
          message,
          style: const TextStyle(fontSize: 18.0),
        ),
      ),
    );
  }

  // Konum alma fonksiyonu
  Future<void> getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Konum hizmeti açık mı kontrol edin
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      print('Konum hizmetleri devre dışı. Lütfen etkinleştirin.');
      return;
    }

    // Konum izni kontrolü
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        print('Konum izni reddedildi.');
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      print('Konum izni kalıcı olarak reddedildi.');
      return;
    }

    // Konum bilgisini al
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    print('Konum: Enlem: ${position.latitude}, Boylam: ${position.longitude}');
  }



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
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFFD4E4ED),
                      Color(0xFFB0D1D7),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: const Text(""),
              ),
              SingleChildScrollView(
               child:  Container(
                margin: const EdgeInsets.only(top: 60.0, left: 20.0, right: 20.0),
                child: Column(
                  children: [
                    Center(
                      child: Image.asset(
                        "images/Minimalist.png",
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 1.8,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Form(
                          key: _formkey,
                          child: Column(
                            children: [
                              const SizedBox(height: 30.0),
                              Text(
                                'KAYIT OL',
                                style: AppWidget.colorHeadLineTextFeildStyle(),
                              ),
                              const SizedBox(height: 30.0),
                              TextFormField(
                                controller: namecontroller,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Lütfen isminizi giriniz.';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  hintText: 'İsim',
                                  hintStyle: AppWidget.colorSemiBoldTextFeildStyle(),
                                  prefixIcon: const Icon(Icons.person_outline),
                                ),
                              ),
                              const SizedBox(height: 30.0),
                              TextFormField(
                                controller: mailcontroller,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Lütfen e-mail adresinizi giriniz.';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  hintText: 'Email',
                                  hintStyle: AppWidget.colorSemiBoldTextFeildStyle(),
                                  prefixIcon: const Icon(Icons.email_outlined),
                                ),
                              ),
                              const SizedBox(height: 30.0),
                              TextFormField(
                                controller: passwordcontroller,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Lütfen şifrenizi giriniz.';
                                  }
                                  return null;
                                },
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: 'Şifre',
                                  hintStyle: AppWidget.colorSemiBoldTextFeildStyle(),
                                  prefixIcon: const Icon(Icons.password_outlined),
                                ),
                              ),
                              const SizedBox(height: 60.0),
                              GestureDetector(
                                onTap: () async {
                                  if (_formkey.currentState!.validate()) {
                                    setState(() {
                                      email = mailcontroller.text;
                                      name = namecontroller.text;
                                      password = passwordcontroller.text;
                                    });
                                  }
                                },
                                child: Material(
                                  elevation: 5.0,
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                                    width: 200,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFEF9A9A),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'KAYIT OL',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18.0,
                                          fontFamily: 'Poppins1',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 70.0),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LogIn()),
                        );
                      },
                      child: Text(
                        'Hesabınız var mı? Giriş yapın',
                        style: AppWidget.semiBoldTextFeildStyle(),
                      ),
                    ),
                  ],
                ),
              ),
              ),

              Positioned(
                bottom: 20.0, // Alt kenara 20px mesafe
                left: 20.0, // Sol kenara 20px mesafe
                child: GestureDetector(
                  onTap: () async {
                    // Acil durum butonuna tıklama işlemi
                    // Burada istediğiniz acil durum işlevini ekleyebilirsiniz
                    await getCurrentLocation(); // Konum Bilgisini Al
                    print('Acil Durum Butonuna Tıklandı');
                  },
                  child: AnimatedBuilder(
                    animation: _animationController,
                    builder: (context, child) {
                    return Transform.scale(
                    scale: _animation.value, // Animasyon etkisi
                    child: Container(
                      width: 80.0, // Butonun genişliği
                      height: 80.0, // Butonun yüksekliği
                      decoration: BoxDecoration(
                        color: Colors.white70, // Butonun rengi
                        shape: BoxShape.circle, // Daire şeklinde
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 5.0,
                            offset: Offset(0, 2), // Gölge yönü
                          ),
                        ],
                      ),
                      child:
                      Image.asset("images/daisy1.png"),
                    ),
                  );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),);
  }
}

