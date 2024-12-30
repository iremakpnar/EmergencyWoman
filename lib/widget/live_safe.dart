import 'package:flutter/material.dart';
import 'package:emergencywoman/live_safe/bustation_card.dart';
import 'package:emergencywoman/live_safe/hospital_card.dart';
import 'package:emergencywoman/live_safe/pharmacy_card.dart';
import 'package:emergencywoman/live_safe/police_stationCard.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

class LiveSafe extends StatelessWidget {
  const LiveSafe({super.key});

  static Future<void> openMap(String location) async {
    String googleUrl="https://www.google.com/maps/search/$location";
    final Uri _url = Uri.parse(googleUrl);

    try {
      await launchUrl(_url);
    } catch (e){
      Fluttertoast.showToast(msg: 'something went wrong! call emergency number');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        physics: BouncingScrollPhysics(), //kaydırma sırasında zıplama sağlar
        scrollDirection: Axis.horizontal, // kaydırma yönü
        children: [
          PoliceStation(onMapFunction: openMap,),
          HospitalCard(onMapFunction: openMap,),
          PharmacyCard(onMapFunction: openMap,),
          BustationCard(onMapFunction: openMap,),
        ],
      ),
    );
  }
}
