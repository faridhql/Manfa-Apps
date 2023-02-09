import 'dart:io';

import 'package:berbagilink/widgets/text.dart';
import 'package:berbagilink/widgets/colorStyle.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class buatArtikelbaru extends StatefulWidget {
  const buatArtikelbaru({super.key});

  @override
  State<buatArtikelbaru> createState() => _artikelbaruState();
}

// ignore: camel_case_types
class _artikelbaruState extends State<buatArtikelbaru> {
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
          color: Color.fromARGB(225, 37, 154, 185)),
      margin: const EdgeInsets.only(left: 13, right: 13, bottom: 13, top: 13),
      child: ExpansionTile(
        collapsedIconColor: Color.fromARGB(255, 0, 0, 0),
        title: Container(
          transform: Matrix4.translationValues(8, 0, 10),
          decoration:
              const BoxDecoration(color: Color.fromRGBO(37, 154, 185, 0.1)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: const [
                Icon(
                  Icons.file_copy_outlined,
                  // color: biruColor,
                  size: 25,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Buat Artikel Baru',
                  style: TextStyle(
                    color: Colors.black,
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
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  //Judul
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Tampilkan Foto"),
                      Switch(
                          focusColor: Colors.black,
                          activeColor: Colors.blue,
                          value: isDisabled,
                          onChanged: (check) {
                            setState(() {
                              isDisabled = check;
                            });
                          }),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),

                  Row(
                    children: const [
                      Text(
                        "Judul",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  TextField(
                    autocorrect: false,
                    keyboardType: TextInputType.text,
                    // obscureText: _obsecure,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                      hintText: 'Masukkan Judul',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: const [
                      Text(
                        "URL",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  TextField(
                    autocorrect: false,
                    keyboardType: TextInputType.text,
                    // obscureText: _obsecure,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                      hintText: 'Masukkan Link Menuju Artikel',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      image != null
                          ? SizedBox(
                              width: size.width * 0.82,
                              height: size.height * 0.15,
                              child: Image.file(
                                image!,
                                fit: BoxFit.cover,
                              ))
                          : GestureDetector(
                              onTap: () async {
                                await getImage();
                              },
                              child: Container(
                                width: size.width * 0.82,
                                height: size.height * 0.15,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    8,
                                  ),
                                  color: greyColor,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.upload,
                                      size: 40,
                                    ),
                                    Text(
                                      "Upload Logo Anda",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                      Column(
                        children: [
                          SizedBox(
                            height: size.height * 00.019,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(
                                () {
                                  image = null;
                                },
                              );
                            },
                            child: const Padding(
                              padding: EdgeInsets.only(
                                right: 0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 15,
                  ),

                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Isi Artikel",
                      style: defaultStyle,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  TextField(
                    autocorrect: false,
                    keyboardType: TextInputType.text,
                    maxLines: 5,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 16,
                        color: greyColor,
                      ),
                      hintText: "Masukkan Isi Artikel",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: black1Color,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            64,
                          ),
                          border: Border.all(
                            width: 1.5,
                            color: black1Color,
                          ),
                        ),
                        height: size.height * 00.068,
                        width: size.width * 0.40,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                64,
                              ),
                            ),
                          ),
                          child: Text(
                            SetText.batal,
                            style: batalStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 00.068,
                        width: size.width * 0.40,
                        // padding: const EdgeInsets.only(left: 10),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: black1Color,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                64,
                              ),
                            ),
                          ),
                          child: Text(
                            SetText.simpan,
                            style: simpanStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
