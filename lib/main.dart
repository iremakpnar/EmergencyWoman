import 'package:emergencywoman/pages/bottomnav.dart';
import 'package:emergencywoman/pages/homepage.dart';
import 'package:emergencywoman/user_Screen/sos_screen.dart';
import 'package:emergencywoman/user_Screen/user_login_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:emergencywoman/user_Screen/user_signup_screen.dart';
import 'package:emergencywoman/user_Screen/forget_password.dart';
import 'package:emergencywoman/pages/onboard.dart';
import 'package:http/http.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:emergencywoman/pages/map.dart';
import 'package:emergencywoman/pages/profile.dart';
import 'package:emergencywoman/settings/notificationpage.dart';
import 'package:emergencywoman/settings/settingspage.dart';
import 'package:emergencywoman/settings/todolist.dart';
import 'package:provider/provider.dart';

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
