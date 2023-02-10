// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'dart:io';

import 'package:berbagilink/widgets/text.dart';
import 'package:berbagilink/widgets/colorStyle.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class tab2 extends StatefulWidget {
  const tab2({super.key});

  @override
  State<tab2> createState() => _tab2State();
}

class _tab2State extends State<tab2> {
  File? image;

  Future getImage() async {
    // ignore: no_leading_underscores_for_local_identifiers
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
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
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
                const Text("Ubah Warna"),
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
                  "Warna Judul",
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
                prefixIcon: const Icon(Icons.color_lens,
                color: Colors.blueAccent,),
                hintText: '#FFFFFF',
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

            const SizedBox(
              height: 15,
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
          ],
        ),
      ),
    );
  }
}
