import 'package:flutter/material.dart';
import 'package:emergencywoman/pages/sport.dart';
import 'package:emergencywoman/pages/health.dart';
import 'package:emergencywoman/pages/activity.dart';
import 'package:emergencywoman/pages/education.dart';
import 'package:emergencywoman/pages/violance.dart';


List <String> articleTitle = [
  "ETKİNLİK",
  "SPOR",
  "SAĞLIK",
  "EĞİTİM",
  "ŞİDDET VE FARKINDALIK"
];

List <String> imageSlider = [
  'images/activity.jpg',
  'images/sport.png',
  'images/health.jpg',
  'images/education.png',
  'images/violance.png'

];

// Her resim için gidilecek sayfaların listesi
final List<Widget> pages = [
  const ActivityPage(),
  const SportPage(),
  const HealthPage(),
  const EducationPage(),
  const ViolancePage(),
];