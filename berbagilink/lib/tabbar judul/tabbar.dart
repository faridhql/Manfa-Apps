import 'package:berbagilink/tabbar%20judul/judul.dart';
import 'package:berbagilink/tabbar%20judul/warnajudul.dart';
import 'package:berbagilink/tabbar%20judul/posisi.dart';
import 'package:flutter/material.dart';

class tab1 extends StatefulWidget {
  const tab1({super.key});

  @override
  State<tab1> createState() => _artikelbaruState();
}

class _artikelbaruState extends State<tab1> {
  bool isDisabled = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: const [
          TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
           TabBarView(
            children: [Tabs1(), tab2(), tab3()],
          ),
        ],
      ),
    );
  }
}
