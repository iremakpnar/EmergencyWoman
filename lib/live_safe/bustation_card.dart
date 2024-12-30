import 'package:flutter/material.dart';

class BustationCard extends StatelessWidget {
  final Function? onMapFunction;
  const BustationCard({super.key, this.onMapFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,),
      child: Column(
        children: [
          InkWell(
            onTap: (){
              onMapFunction!('bus stations near me');
            },
            child: Card(
              elevation: 6.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Container(
                height: 60,
                width: 60,
                child: Center(
                  child: Image.asset('icons/bus_stop.png',
                    height: 50,
                  ),
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
