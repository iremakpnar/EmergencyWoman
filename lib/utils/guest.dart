import 'package:emergencywoman/pages/sport.dart';
import 'package:emergencywoman/pages/health.dart';
import 'package:emergencywoman/pages/activity.dart';
import 'package:flutter/material.dart';

List <String> articleTitle = [
  "ETKİNLİK",
  "SPOR",
  "SAĞLIK",
];

List <String> imageSlider = [
  'images/activity.png',
  'images/health.png',
  'images/sport.png'

];

// Her resim için gidilecek sayfaların listesi
final List<Widget> pages = [
  const ActivityPage(),
  const SportPage(),
  const HealthPage(),
];