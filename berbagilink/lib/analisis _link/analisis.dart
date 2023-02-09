import 'package:berbagilink/analisis%20_link/tab_date/tabDatedari.dart';
import 'package:berbagilink/analisis%20_link/tab_date/tabhingga.dart';
import 'package:berbagilink/widgets/text.dart';
import 'package:berbagilink/widgets/colorStyle.dart';
import 'package:berbagilink/halamanUtama/halamanutama.dart';
import 'package:flutter/material.dart';
import 'package:berbagilink/analisis _link/tab_date/tabDatedari.dart';

class Analisis extends StatefulWidget {
  const Analisis({super.key});

  @override
  State<Analisis> createState() => _AnalisisState();
}

class _AnalisisState extends State<Analisis> {
    bool isDisabled = false;
  bool isDisabled1 = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor:
            const Color.fromRGBO(255, 255, 255, 1).withOpacity(0.4),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BerbagiLink(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: black1Color,
                    size: 25,
                  ),
                ),
                SizedBox(
                  width: size.width * 0.068,
                ),
                Text(
                  SetText.berbagilink,
                  style: appbarStyle,
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            iconSize: 65,
            onPressed: () {},
            icon: CircleAvatar(
              backgroundColor: biruBgColor,
              backgroundImage: const AssetImage(
                "images/orang.png",
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Padding(padding: EdgeInsets.only(top: 20, left: 15)),
                Text(
                  "Dari",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Datedari(),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Padding(padding: EdgeInsets.only(top: 20, left: 15)),
                Text(
                  "Hingga",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Datehingga(),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(16),
                  height: 2,
                  color: black1Color,
                )
              ],
            ),
            const SizedBox(
              height: 1,
            ),
            Row(
              children: const [
                Padding(padding: EdgeInsets.only(top: 20, left: 15)),
                Text(
                  "Click & View",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(
                  left: 13, right: 13, bottom: 10, top: 13),
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
                      Text("Jumlah Total View",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Text(
                        "89",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ))
                ],
              ),
            ),
            const SizedBox(height: 5,),
  Container(
              margin: const EdgeInsets.only(
                  left: 13, right: 13, bottom: 13, top: 10),
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
                      Text("Jumlah Total View",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Text(
                        "89",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ))
                ],
              ),
            ),
             Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(16),
                  height: 2,
                  color: black1Color,
                ),
                 Row(
              children: const [
                Padding(padding: EdgeInsets.only(top: 20, left: 15)),
                Text(
                  "Grafik Click & View",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Image.asset("images/grafik.png"),
               const SizedBox(height: 40,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
