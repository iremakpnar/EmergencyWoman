import 'package:flutter/material.dart';
import 'package:emergencywoman/live_safe/bustation_card.dart';
import 'package:emergencywoman/live_safe/hospital_card.dart';
import 'package:emergencywoman/live_safe/pharmacy_card.dart';
import 'package:emergencywoman/live_safe/police_stationCard.dart';

class LiveSafe extends StatelessWidget {
  const LiveSafe({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        physics: BouncingScrollPhysics(), //kaydırma sırasında zıplama sağlar
        scrollDirection: Axis.horizontal, // kaydırma yönü
        children: [
             PoliceStation(),
             HospitalCard(),
             PharmacyCard(),
             BustationCard(),
        ],
      ),
    );
  }
}
