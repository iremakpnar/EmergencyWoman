import 'package:flutter/material.dart';

class BustationCard extends StatelessWidget {
  const BustationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,),
      child: Column(
        children: [
          Card(
            elevation: 6.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
            ),
            child: Container(
              height: 50,
              width: 50,
              child: Center(
                child: Image.asset('icons/bus_stop.png',
                  height: 32,
                ),
              ),
            ),
          ),
          Text("Bus Stations")
        ],
      ),
    );
  }
}