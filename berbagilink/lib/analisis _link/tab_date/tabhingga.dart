// ignore: file_names
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Datehingga extends StatefulWidget {
  const Datehingga({super.key});

  @override
  State<Datehingga> createState() => _artikelbaruState();
}

// ignore: camel_case_types
class _artikelbaruState extends State<Datehingga> {
  File? image;

  Future getImage() async {
    final ImagePicker picker = ImagePicker();
    // ignore: non_constant_identifier_names
    final XFile? ImagePicked =
        await picker.pickImage(source: ImageSource.gallery);
    image = File(ImagePicked!.path);
    setState(() {});
  }

  bool isDisabled = false;

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(
              10,
            ),
          ),
          color:  Color.fromARGB(225,37, 154, 185)),
      margin: const EdgeInsets.only(left: 13, right: 13, bottom: 5, top: 10),
      child: ExpansionTile(
        collapsedIconColor: const Color.fromARGB(255, 0, 0, 0),
        title: Container(
          transform: Matrix4.translationValues(8, 0, 10),
          decoration:
              const BoxDecoration(color: Color.fromRGBO(37, 154, 185,0.1)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: const [
                Text(
                  '5  Oktober 2022',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 18,
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
