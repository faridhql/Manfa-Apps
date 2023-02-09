import 'package:berbagilink/ubahTampilan/UbahTampilan.dart';
import 'package:berbagilink/halamanUtama/halamanutama.dart';
import 'package:berbagilink/halamanUtama/tab_berbagilink.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Ubuntu',
      ),
      home: Scaffold(
        // resizeToAvoidBottomInset: false,
        body: BerbagiLink(),
      ),
    );
  }
}


