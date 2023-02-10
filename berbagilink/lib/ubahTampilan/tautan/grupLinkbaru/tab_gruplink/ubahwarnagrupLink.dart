import 'package:berbagilink/widgets/text.dart';
import 'package:berbagilink/widgets/colorStyle.dart';
import 'package:flutter/material.dart';

import '../../../../halamanUtama/halamanutama.dart';

class ubahwarnagruplink extends StatefulWidget {
  const ubahwarnagruplink({super.key});

  @override
  State<ubahwarnagruplink> createState() => _Tabs1State();
}

final List<Tab> myTabs = List.generate(
  3,
  (index) => Tab(text: 'TAB $index'),
);

class _Tabs1State extends State<ubahwarnagruplink>
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),

              //Judul
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Ubah Warna",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (isDisabled == true) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => BerbagiLink(),
                          ),
                        );
                      }
                    },
                    child: Switch(
                        focusColor: Colors.black,
                        activeColor: Colors.blue,
                        value: isDisabled,
                        onChanged: (check) {
                          setState(() {
                            isDisabled = check;
                          });
                        }),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              isDisabled == false ? Container() : Warna(),
              const SizedBox(
                height: 16,
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
                        backgroundColor: Colors.white,
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
                        backgroundColor: black1Color,
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
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget Warna() {
  return Column(
    children: [
      const Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          'Warna Tombol',
          style: TextStyle(
            fontFamily: 'Ubuntu',
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),
      ),
      const SizedBox(
        height: 6,
      ),
      Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 2, color: Colors.grey),
        ),
        height: 65,
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 2, color: Colors.grey),
              ),
              height: 54,
              width: 54,
            ),
            const SizedBox(
              width: 15,
            ),
            const Text(
              '#FFFFFF',
              style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                  fontSize: 16),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 10,
      ),
      const Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          'Warna Teks',
          style: TextStyle(
            fontFamily: 'Ubuntu',
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),
      ),
      const SizedBox(
        height: 6,
      ),
      Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 2, color: Colors.grey),
        ),
        height: 65,
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 2, color: Colors.grey),
              ),
              height: 54,
              width: 54,
            ),
            const SizedBox(
              width: 15,
            ),
            const Text(
              '#FFFFFF',
              style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                  fontSize: 16),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 10,
      ),
      const Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          'Warna Garis',
          style: TextStyle(
            fontFamily: 'Ubuntu',
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),
      ),
      const SizedBox(
        height: 6,
      ),
      Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 2, color: Colors.grey),
        ),
        height: 65,
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 2, color: Colors.grey),
              ),
              height: 54,
              width: 54,
            ),
            const SizedBox(
              width: 15,
            ),
            const Text(
              '#FFFFFF',
              style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                  fontSize: 16),
            ),
          ],
        ),
      ),
    ],
  );
}
