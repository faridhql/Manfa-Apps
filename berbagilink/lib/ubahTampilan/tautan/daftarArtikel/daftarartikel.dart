import 'dart:io';

import 'package:berbagilink/widgets/text.dart';
import 'package:berbagilink/widgets/colorStyle.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class daftarArtikel extends StatefulWidget {
  const daftarArtikel({super.key});

  @override
  State<daftarArtikel> createState() => _artikelbaruState();
}

class _artikelbaruState extends State<daftarArtikel> {
  File? image;

  Future getImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? ImagePicked =
        await _picker.pickImage(source: ImageSource.gallery);
    image = File(ImagePicked!.path);
    setState(() {});
  }

  bool isDisabled = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(
              10,
            ),
          ),
          color:  Color.fromARGB(225,37, 154, 185)),
      margin: const EdgeInsets.only(left: 13, right: 13, bottom: 13, top: 13),
      child: ExpansionTile(
        collapsedIconColor: Color.fromARGB(255, 0, 0, 0),
        title: Container(
          transform: Matrix4.translationValues(8, 0, 10),
          decoration:
              const BoxDecoration(color: Color.fromRGBO(37, 154, 185,0.1)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: const [
                Icon(
                  Icons.file_copy_outlined,
                  // color: biruColor,
                  size: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Lihat Daftar Artikel',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ]),
        ),
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              border: Border.all(color: Colors.black),
            ),
            
          ),
        ],
      ),
    );
  }
}
