import 'package:flutter/material.dart';

class PoliceStation extends StatelessWidget {
  final Function? onMapFunction;
  const PoliceStation({super.key , this.onMapFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,),
      child: Column(
        children: [
          InkWell(
            onTap: (){
              onMapFunction!('polis merkezi');
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
                  child: Image.asset('icons/police_station.png',
                    height: 50,
                  ),
                ),
              ),
            ),
          ),
          Text("Polis Merkezi")
        ],
      ),
    );
  }
}
