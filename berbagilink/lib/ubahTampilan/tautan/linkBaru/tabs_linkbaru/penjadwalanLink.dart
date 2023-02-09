import 'dart:io';

import 'package:berbagilink/widgets/text.dart';
import 'package:berbagilink/widgets/colorStyle.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class penjadwalanLink extends StatefulWidget {
  const penjadwalanLink({super.key});

  @override
  State<penjadwalanLink> createState() => _Tabs1State();
}

final List<Tab> myTabs = List.generate(
  3,
  (index) => Tab(text: 'TAB $index'),
);

class _Tabs1State extends State<penjadwalanLink>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  // ignore: prefer_typing_uninitialized_variables
  var kTitleTextStyle;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  bool isDisabled = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Container(
      decoration: BoxDecoration(
        
        color: Colors.white,
        borderRadius: BorderRadius.only(
        
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
                Text("Tampilkan Judul"),
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
              children: [
                Text(
                  "Judul",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
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
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 14,
                  color: Colors.grey,
                ),
                hintText: 'Masukkan Judul',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            

            SizedBox(
              height: 30,
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
          ],
        ),
      ),
    );
  }
}
