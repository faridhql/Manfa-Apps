import 'package:berbagilink/ubahTampilan/tautan/artikelBaru/buatartikelBaru.dart';
import 'package:berbagilink/ubahTampilan/tautan/daftarLink/daftarlinkmain.dart';
import 'package:berbagilink/ubahTampilan/tautan/daftarLink/tab_daftarlink/tabdaftarLink.dart';
import 'package:berbagilink/widgets/colorStyle.dart';
import 'package:berbagilink/ubahTampilan/tautan/linkBaru/buatlinkbaru.dart';
import 'package:berbagilink/ubahTampilan/tautan/daftarArtikel/daftarartikel.dart';
import 'package:berbagilink/ubahTampilan/tautan/daftarLink/instagrammain.dart';
import 'package:berbagilink/ubahTampilan/tautan/grupLinkbaru/gruplink.dart';
import 'package:berbagilink/ubahTampilan/tautan/judulBaru/judulbaru.dart';
import 'package:flutter/material.dart';

class Tautan extends StatelessWidget {
  const Tautan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.only(top: 18)),
            const judulbaru(),
            const Linkbaru(),
            const gruplink(),
            const buatArtikelbaru(),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(16),
                  height: 1,
                  color: black1Color,
                ),
                const DaftarLinkMain(),
                const DaftarArtikelmain(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
