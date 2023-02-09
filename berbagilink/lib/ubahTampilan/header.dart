// ignore: duplicate_ignore
// ignore: unused_import
// ignore_for_file: unused_import

import 'package:berbagilink/ubahTampilan/UbahTampilan.dart';
import 'package:berbagilink/widgets/colorStyle.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import '../widgets/text.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDisabled = false;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 44,
                    backgroundImage: NetworkImage(
                      "https://img.esportsku.com/wp-content/uploads/2020/11/zilong.jpg",
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Ubah Foto Profil",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'ubuntu',
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Ubah gambar berukuran resolusi 1:1",
                        style: TextStyle(fontSize: 12),
                      ),
                      Text("(maksimum ukuran gambar berukuran 1 MB)",
                          style: TextStyle(
                              fontSize: 9, fontWeight: FontWeight.bold))
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  Padding(padding: EdgeInsets.only(left: 5)),
                  Text("Username",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(left: 2, right: 2),
                height: 60,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Colors.black,
                  textInputAction: TextInputAction.search,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Container(
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          topLeft: Radius.circular(12),
                        ),
                      ),
                      height: 60,
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 18, horizontal: 8),
                        child: Text(
                          'Berbagi link',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                    ),
                    hintText: 'Masukkan username',
                    hintStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  style: const TextStyle(color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                children: const [
                  Padding(padding: EdgeInsets.only(left: 20)),
                  Text("Contoh : Muhammad Zilong",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: const [
                  Padding(padding: EdgeInsets.only(left: 5)),
                  Text("Nama Yang Ditampilkan",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(height: 13),
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
                  hintText: 'Masukkan nama yang ingin di tampilkan',
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
                height: 10,
              ),
              Row(
                children: const [
                  Padding(padding: EdgeInsets.only(left: 5)),
                  Text("Lokasi",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(height: 13),
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
                  hintText: 'Masukkan Lokasi',
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
                height: 10,
              ),
              Row(
                children: const [
                  Padding(padding: EdgeInsets.only(left: 5)),
                  Text("Link Lokasi(Google Maps)",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(height: 13),
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
                  hintText: 'Masukkan link google Maps Lokasi',
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
                height: 10,
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
                      color: grey1Color,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Text("Tampilkan Judul",style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 15),),
                      const SizedBox(width: 10,),
                      Container(
                        alignment: Alignment.center,
                        height: 25,
                        width: 50,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.black),
                        child: const Text(
                          "New",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
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
               Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Tampilkan Halaman Event (Tema Default)",style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 12),),
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
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Tampilkan Menu Ibadah (Tema Default)",style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 12),),
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
                 SizedBox(
                        height: size.height * 00.068,
                        width: size.width * 0.95,
                        // padding: const EdgeInsets.only(left: 10),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            // ignore: deprecated_member_use
                            primary: black1Color,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                20,
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
                      const SizedBox(height: 30,)
            ],
            
          ),
        ),
      ]),
    ));
  }

  void setState(Null Function() param0) {}
}
