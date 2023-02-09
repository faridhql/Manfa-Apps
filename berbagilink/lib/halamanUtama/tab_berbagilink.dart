import 'package:berbagilink/ubahTampilan/UbahTampilan.dart';
import 'package:berbagilink/analisis%20_link/analisis.dart';
import 'package:berbagilink/pratinjau/pratinjau.dart';
import 'package:berbagilink/pratinjau/preview.dart';
import 'package:berbagilink/tabbar%20judul/warnajudul.dart';
import 'package:berbagilink/tabbar%20judul/posisi.dart';

import 'package:berbagilink/tabbar%20judul/tabbar.dart';
import 'package:berbagilink/widgets/custom_wrap.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_wrap.dart';
import 'package:berbagilink/halamanUtama/halamanutama.dart';

class Tabberbagilink extends StatefulWidget {
  const Tabberbagilink({Key? key}) : super(key: key);

  @override
  State<Tabberbagilink> createState() => _TabberbagilinkState();
}

class _TabberbagilinkState extends State<Tabberbagilink> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: double.infinity,
      child: Container(
        // color: Colors.amber,
        padding: const EdgeInsets.symmetric(
          horizontal: 6,
          vertical: 20,
        ),
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: <Widget>[
            MITMenuContainer.none(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UbahTampilan(),
                  ),
                );
              },
              image: Image.asset(
                'images/ubahtampilan.png',
                width: 66,
              ),
              text: 'Ubah Tampilan',
            ),
            MITMenuContainer.none(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Analisis(),
                  ),
                );
              },
              image: Image.asset(
                'images/analisislink.png',
                width: 66,
              ),
              text: 'Analisis Link',
            ),
            MITMenuContainer.none(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Pratinjau(),
                  ),
                );
              },
              image: Image.asset(
                'images/pertinjau.png',
                width: 66,
              ),
              text: 'Pratinjau',
            ),
            MITMenuContainer.none(
              onTap: () {
                //  Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => 
                //   ),
                // );
              },
              image: Image.asset(
                'images/tema.png',
                width: 66,
              ),
              text: 'Tema',
            ),
            MITMenuContainer.none(
              onTap: () {},
              image: Image.asset(
                'images/TrackingPixels.png',
                width: 66,
              ),
              text: 'Tracking Pixels',
            ),
            MITMenuContainer.none(
              onTap: () {},
              image: Image.asset(
                'images/Emaildatabase.png',
                width: 66,
              ),
              text: 'Emaildatabase',
            ),
            MITMenuContainer.none(
              onTap: () {},
              image: Image.asset(
                'images/Tagihan.png',
                width: 66,
              ),
              text: 'Tagihan',
            ),
            MITMenuContainer.none(
              onTap: () {},
              image: Image.asset(
                'images/Bagito.png',
                width: 66,
              ),
              text: 'Bagi.to',
            ),
            MITMenuContainer.none(
              onTap: () {},
              image: Image.asset(
                'images/manajemen.png',
                width: 66,
              ),
              text: 'Manajemen User',
            ),
            MITMenuContainer.none(
              onTap: () {},
              image: Image.asset(
                'images/eventonlne.png',
                width: 66,
              ),
              text: 'Event Online',
            ),
            MITMenuContainer.none(
              onTap: () {},
              image: Image.asset(
                'images/profile.png',
                width: 66,
              ),
              text: 'Profile',
            ),
            MITMenuContainer.none(
              onTap: () {},
              image: Image.asset(
                'images/pihakketiga.png',
                width: 66,
              ),
              text: 'Integrasi Pihak Ketiga',
            ),
          ],
        ),
      ),
    ));
  }
}
