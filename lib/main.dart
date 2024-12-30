import 'package:emergencywoman/user_Screen/sos_screen.dart';
import 'package:emergencywoman/user_Screen/user_login_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:emergencywoman/user_Screen/user_signup_screen.dart';
import 'package:emergencywoman/user_Screen/user_login_screen.dart';
import 'package:emergencywoman/user_Screen/forget_password.dart';
import 'package:emergencywoman/widget/home_widgets/home_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SosScreen(),
    );
  }
}
