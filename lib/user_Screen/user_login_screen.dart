import 'package:emergencywoman/user_Screen/user_signup_screen.dart';
import 'package:emergencywoman/widget/home_widgets/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:emergencywoman/widget/widget_support.dart';

import 'forget_password.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> with SingleTickerProviderStateMixin {

  String email = "",
      password = "";

  final _formkey = GlobalKey<FormState>();

  late AnimationController _animationController;
  late Animation<double> _animation;

  TextEditingController useremailcontroller = new TextEditingController();
  TextEditingController userpasswordcontroller = new TextEditingController();


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
    userpasswordcontroller.dispose();
    useremailcontroller.dispose();
    super.dispose();
  }


  userLogin() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email, password: password);
    }
    on FirebaseAuthException catch (e) {
      if (e.code == 'kullanici-bulunamadi') {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(
          'Bu e-mail adresine ait kullanıcı bulunamadı',
          style: TextStyle(fontSize: 18.0, color: Colors.black),)));
      }
      else if (e.code == 'hatali-sifre') {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(
          'Hatalı şifre girdiniz',
          style: TextStyle(fontSize: 18.0, color: Colors.black),)));
      }
    }
  }

/*

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height, // Tam ekran yüksekliği
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
                  child: Text(""),
                ),
                Container(
                  margin: EdgeInsets.only(top: 60.0, left: 20.0, right: 20.0),
                  child: Column(children: [
                    Center(
                        child: Image.asset("images/logo1.png",
                          width: MediaQuery.of(context).size.width / 1.5,
                          fit: BoxFit.cover,)),
                    SizedBox(height: 50.0,),
                    Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.only(left: 20.0, right: 20.0),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 2,
                        decoration: BoxDecoration(color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Form(
                          key: _formkey,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 30.0,),
                              Text(
                                'GİRİŞ YAP',
                                style: AppWidget.HeadlineTextFeildStyle(),),
                              SizedBox(
                                height: 30.0,),
                              TextFormField(
                                controller: useremailcontroller,
                                validator: (value){
                                  if(value==null || value.isEmpty){
                                    return 'Lütfen Email giriniz';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                    hintText: 'Email',
                                    hintStyle: AppWidget.semiBoldTextFeildStyle(),
                                    prefixIcon: Icon(Icons.email_outlined)),
                              ),
                              SizedBox(
                                height: 30.0,),
                              TextFormField(
                                controller: userpasswordcontroller,
                                validator: (value){
                                  if(value==null || value.isEmpty){
                                    return 'Lütfen şifrenizi giriniz';
                                  }
                                  return null;
                                },
                                obscureText: true,
                                decoration: InputDecoration(
                                    hintText: 'Şifre',
                                    hintStyle: AppWidget.semiBoldTextFeildStyle(),
                                    prefixIcon: Icon(Icons.password_outlined)),
                              ),
                              SizedBox(height: 20.0,),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ForgotPassword()));
                                },
                                child: Container(
                                    alignment: Alignment.topRight,
                                    child: Text('Şifrenizi mi unuttunuz ?',
                                      style: AppWidget.semiBoldTextFeildStyle(),)),
                              ),
                              SizedBox(height: 60.0,),
                              GestureDetector(
                                onTap: (){
                                  if(_formkey.currentState!.validate()){
                                    setState(() {
                                      email= useremailcontroller.text;
                                      password= userpasswordcontroller.text;
                                    });
                                  }
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
                                  userLogin();
                                },
                                child: Material(
                                  elevation: 5.0,
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(vertical: 8.0),
                                    width: 200,
                                    decoration: BoxDecoration(color: Color(0xFF1A237E),
                                        borderRadius: BorderRadius.circular(20)),
                                    child: Center(
                                        child: Text(
                                          'GİRİŞ YAP',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18.0,
                                              fontFamily: 'Poppins1',
                                              fontWeight: FontWeight.bold),)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 70.0,),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => SignUp()));
                        },
                        child: Text('Hesabınız yok mu? Kayıt olun',
                          style: AppWidget.semiBoldTextFeildStyle(),)),

                  ],),
                )
            ],),
        ),
    ),);
  }
}

*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( // SingleChildScrollView ile kaydırılabilir yapıyı oluşturuyoruz
        child: Container(
          height: MediaQuery.of(context).size.height, // Ekran yüksekliğine uyum sağlamak için
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
                child: Text(""),
              ),
              SingleChildScrollView( // Column'ı SingleChildScrollView ile sarıyoruz
                child: Container(
                  margin: EdgeInsets.only(top: 60.0, left: 20.0, right: 20.0),
                  child: Column(children: [
                    Center(
                        child: Image.asset("images/Minimalist.png",
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,)),
                    SizedBox(height: 50.0,),
                    Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.only(left: 20.0, right: 20.0),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 2,
                        decoration: BoxDecoration(color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Form(
                          key: _formkey,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 30.0,),
                              Text(
                                'GİRİŞ YAP',
                                style: AppWidget.colorHeadLineTextFeildStyle(),),
                              SizedBox(
                                height: 30.0,),
                              TextFormField(
                                controller: useremailcontroller,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Lütfen Email giriniz';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                    hintText: 'Email',
                                    hintStyle: AppWidget.colorSemiBoldTextFeildStyle(),
                                    prefixIcon: Icon(Icons.email_outlined)),
                              ),
                              SizedBox(
                                height: 30.0,),
                              TextFormField(
                                controller: userpasswordcontroller,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Lütfen şifrenizi giriniz';
                                  }
                                  return null;
                                },
                                obscureText: true,
                                decoration: InputDecoration(
                                    hintText: 'Şifre',
                                    hintStyle: AppWidget.colorSemiBoldTextFeildStyle(),
                                    prefixIcon: Icon(Icons.password_outlined)),
                              ),
                              SizedBox(height: 20.0,),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (context) => ForgotPassword()));
                                },
                                child: Container(
                                    alignment: Alignment.topRight,
                                    child: Text('Şifrenizi mi unuttunuz ?',
                                      style: AppWidget.semiBoldTextFeildStyle(),)),

                              ),
                              SizedBox(height: 60.0,),
                              GestureDetector(
                                onTap: () {
                                  if (_formkey.currentState!.validate()) {
                                    setState(() {
                                      email = useremailcontroller.text;
                                      password = userpasswordcontroller.text;
                                    });
                                  }
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(
                                          builder: (context) => HomePage()));
                                  userLogin();
                                },
                                child: Material(
                                  elevation: 5.0,
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 8.0),
                                    width: 200,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFEF9A9A),
                                        borderRadius: BorderRadius.circular(
                                            20)),
                                    child: Center(
                                        child: Text(
                                          'GİRİŞ YAP',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18.0,
                                              fontFamily: 'Poppins1',
                                              fontWeight: FontWeight.bold),)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 70.0,),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context) => SignUp()));
                        },
                        child: Text('Hesabınız yok mu? Kayıt olun',
                          style: AppWidget.semiBoldTextFeildStyle(),)),

                  ],),
                ),
              ),

              Positioned(
                bottom: 20.0, // Alt kenara 20px mesafe
                left: 20.0, // Sol kenara 20px mesafe
                child: GestureDetector(
                  onTap: () {
                    // Acil durum butonuna tıklama işlemi
                    // Burada istediğiniz acil durum işlevini ekleyebilirsiniz
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
                      Image.asset("images/daisy1.png")
                    ),
                    );
                    },
                  ),
                ),
              ),
          ],),
        ),
      ),
    );
  }
}