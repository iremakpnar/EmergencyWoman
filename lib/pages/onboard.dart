/*
import 'package:flutter/material.dart';
import 'package:emergencywoman/user_Screen/user_signup_screen.dart';
import 'package:emergencywoman/widget/content_model.dart';
import 'package:emergencywoman/widget/widget_support.dart';



class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {

  int currentIndex=0;
  late PageController _controller;

  @override
  void initState() {
    _controller= PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
        Expanded(
          child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index){
                setState(() {
                  currentIndex= index;
                });
              },
              itemBuilder: (_,i){
                return Padding(padding: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
                  child: Column(children: [
                    Image.asset(
                      contents[i].image,
                      height: 450,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.fill,),
                    SizedBox(height: 40.0,),
                    Text(contents[i].title,
                      style: AppWidget.semiBoldTextFeildStyle(),),
                    SizedBox(height: 20.0,),
                    Text(contents[i].description,
                      style: AppWidget.LightTextFeildStyle(),),
                  ],),
                );
              }),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(contents.length, (index) =>
                buildDot(index, context),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            if(currentIndex==contents.length-1){
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context)=> SignUp()));
            }
            _controller.nextPage(
                duration: Duration(milliseconds: 100),
                curve: Curves.bounceIn);
          },
          child: Container(
            decoration: BoxDecoration(color: Color(0xFF1A237E), borderRadius: BorderRadius.circular(20)),
            height: 60,
            margin: EdgeInsets.all(40),
            width: double.infinity,
            child: Center(
              child: Text(
                  currentIndex==contents.length-1?'Başlayın':'Sonraki',
                  style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold)),
            ),
          ),
        )
      ],),
    );
  }
  Container buildDot(int index, BuildContext context){
    return Container(
      height: 10.0,
      width: currentIndex==index?18:7,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Colors.black38),
    );
  }
}
*/



import 'package:flutter/material.dart';
import 'package:emergencywoman/user_Screen/user_signup_screen.dart';
import 'package:emergencywoman/widget/content_model.dart';
import 'package:emergencywoman/widget/widget_support.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Arka Plan Gradient
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFFFCDD2),
                  Color(0xFFEF9A9A),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          // İçerik
          Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _controller,
                  itemCount: contents.length,
                  onPageChanged: (int index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemBuilder: (_, i) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          top: 40.0, left: 20.0, right: 20.0),
                      child: Column(
                        children: [
                          Image.asset(
                            contents[i].image,
                            height: 450,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(height: 40.0),
                          Text(
                            contents[i].title,
                            style: AppWidget.semiBoldTextFeildStyle(),
                          ),
                          const SizedBox(height: 20.0),
                          Text(
                            contents[i].description,
                            style: AppWidget.LightTextFeildStyle(),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              // Sayfa Göstergesi
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    contents.length,
                        (index) => buildDot(index, context),
                  ),
                ),
              ),
              // "Sonraki" veya "Başlayın" Butonu
              GestureDetector(
                onTap: () {
                  if (currentIndex == contents.length - 1) {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                  }
                  _controller.nextPage(
                      duration: const Duration(milliseconds: 100),
                      curve: Curves.bounceIn);
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFF8D3A60),
                      borderRadius: BorderRadius.circular(20)),
                  height: 60,
                  margin: const EdgeInsets.all(40),
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      currentIndex == contents.length - 1
                          ? 'Başlayın'
                          : 'Sonraki',
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10.0,
      width: currentIndex == index ? 18 : 7,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.black38,
      ),
    );
  }
}
