// ignore: unused_import
import 'package:berbagilink/ubahTampilan/UbahTampilan.dart';
import 'package:berbagilink/ubahTampilan/Fitur/BuatEvent/buatevent.dart';
import 'package:berbagilink/widgets/text.dart';
import 'package:berbagilink/widgets/colorStyle.dart';
import 'package:flutter/material.dart';


import 'upload_logo.dart';

class Fitur extends StatefulWidget {
  const Fitur({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<Fitur> {
  int? _value = 1;

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 18,
          ),
          Container(
            margin:
                const EdgeInsets.only(left: 13, right: 13, bottom: 13, top: 13),
            height: 48,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(225, 37, 154, 185)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Padding(padding: EdgeInsets.only(left: 10)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Padding(padding: EdgeInsets.only(left: 25)),
                    Icon(Icons.file_copy),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Text(
                      "Buat Event",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EventOnline()),
                    );
                  },
                  icon: const Icon(Icons.arrow_forward_sharp),
                )
              ],
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(left: 13, right: 13, bottom: 13, top: 13),
            height: 48,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(225, 37, 154, 185)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Padding(padding: EdgeInsets.only(left: 10)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Padding(padding: EdgeInsets.only(left: 25)),
                    Icon(Icons.file_copy),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Text(
                      "Buat Produk",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: (() {
                             Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EventOnline()),
                    );
                  }),
                  icon: const Icon(Icons.arrow_forward_sharp),
                )
              ],
            ),
          ),
          _buildtambahAkunIconBack(),
          const LogoFooter(),
        ],
      ),
    ));
  }

  Widget _buildtambahAkunIconBack() {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(
              15,
            ),
          ),
          color: Color.fromARGB(225, 37, 154, 185)),
      margin: const EdgeInsets.only(left: 13, right: 13, bottom: 13, top: 13),
      child: ExpansionTile(
        collapsedIconColor: const Color.fromARGB(255, 0, 0, 0),
        title: Container(
          transform: Matrix4.translationValues(8, 0, 10),
          decoration: const BoxDecoration(color: Color.fromARGB(225, 37, 154, 185)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: const [
                Icon(
                  Icons.image,
                  // color: biruColor,
                  size: 25,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Tambahkan Gambar/\nVideo/Iframe',
                
                  style: TextStyle(
                      fontFamily: 'ubuntu',
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                      
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
              ),
              child: const Text(
                'PRO',
              ),
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
                  const Align(
                    alignment: Alignment.bottomLeft,
                    child: Text('Judul'),
                  ),
                  const SizedBox(
                    height: 16,
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
                  const Align(
                    alignment: Alignment.bottomLeft,
                    child: Text('Tipe'),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    //
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 1.3,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Pilih Tipe'),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.keyboard_arrow_down_outlined,
                          ),
                          // color: black1Color,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  // ignore: avoid_unnecessary_containers
                  Container(
                    child: Row(
                      children: const [
                        Text(
                          "Rasio",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ), //
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: Row(
                          children: [
                            Radio(
                              value: 1,
                              groupValue: _value,
                              onChanged: (value) {
                                setState(() {
                                  _value = value ;
                                });
                              },
                            ),
                            const Text("16 : 9 ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ), //

                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: Row(
                          children: [
                            Radio(
                              value: 2,
                              groupValue: _value,
                              onChanged: (value) {
                                setState(() {
                                  _value = value;
                                });
                              },
                            ),
                            const Text(
                              "1 : 1",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ],
                  ), //
                  //Elevated Button
                  const SizedBox(
                    height: 20,
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
                            // ignore: deprecated_member_use
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
                            // ignore: deprecated_member_use
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
