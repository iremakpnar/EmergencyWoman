import 'package:flutter/material.dart';

class UnboardingContent{
  String image;
  String title;
  String description;
  UnboardingContent(
      {required this.description, required this.image, required this.title});
}
List<UnboardingContent> contents=[
  UnboardingContent(
      description: 'Güvenliğiniz için\n                 Bir tık uzağınızdayız',
      image: 'images/girlpower.png',
      title: 'Her zaman \n        YANINIZDAYIZ'),
  UnboardingContent(
      description: 'Sosyal etkileşimlerle\n     Arkadaş ağınızı genişletin',
      image: 'images/girlsupport.png',
      title: 'Hiçbir zaman\n       YALNIZ DEĞİLSİNİZ'),
  UnboardingContent(
      description: 'İş sahasında kendinize\n      Uygun deneyim kazanma fırsatları',
      image: 'images/investment.png',
      title: 'Kendinize güvenin'),
  UnboardingContent(
      description: 'En yakın güvenlik\n      Kuruluşlarına saniyeler içinde ulaşın',
      image: 'images/geography.png',
      title: 'Yol tarifleriyle en yakın\n      güvenli bölgeye ulaşacaksınız')
];