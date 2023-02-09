import 'package:berbagilink/widgets/text.dart';
import 'package:berbagilink/widgets/colorStyle.dart';
import 'package:berbagilink/halamanUtama/halamanutama.dart';
import 'package:flutter/material.dart';

class Pratinjau extends StatefulWidget {
  const Pratinjau({super.key});

  @override
  State<Pratinjau> createState() => _PratinjauState();
}

class _PratinjauState extends State<Pratinjau> {
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
        body: Column(
          children: [
          const  SizedBox(
              height: 20,
            ),
            const Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://img.esportsku.com/wp-content/uploads/2020/11/zilong.jpg",
                ),
                radius: 44,
              ),
            ),
          const   SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                "Muhammad Zilong",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
              ),
            ),
            Center(
              child: Column(
                children: [
                  Container(
                    height: 35,
                    margin: const EdgeInsets.only(right: 100, left: 100, top: 20),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: black1Color,
                        ),
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromARGB(255, 255, 255, 255)),
                    child: Row(
                      children: [
                        const Padding(padding: EdgeInsets.only(left: 11)),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                             Icon(Icons.location_pin),
                          ],
                        ),
                        Row(
                          children: const [
                            Padding(padding: EdgeInsets.only(left: 3)),
                            Text(
                              "Bogor, Indonesia",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              children: [
                Container(
                  height: 50,
                  margin: const EdgeInsets.only(left: 30, right: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                    border: Border.all(
                      width: 1.5,
                      color: black1Color,
                    ),
                  ),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(
                          255,
                          247,
                          171,
                          27,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          Image.asset("images/ig.png"),
                          Row(
                            children: [
                              const Padding(padding: EdgeInsets.only(left: 10)),
                              Text(
                                "Instagram",
                                style: TextStyle(
                                  color: black1Color,
                                  fontWeight: FontWeight.w800,
                                ),
                              )
                            ],
                          )
                        ],
                      )),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Container(
                  height: 50,
                  margin: const EdgeInsets.only(left: 30, right: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                    border: Border.all(
                      width: 1.5,
                      color: black1Color,
                    ),
                  ),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        // ignore: deprecated_member_use
                        primary: const Color.fromARGB(
                          255,
                          37,
                          185,
                          132,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          Image.asset("images/wa.png"),
                          Row(
                            children: [
                              const Padding(padding: EdgeInsets.only(left: 10)),
                              Text(
                                "Instagram",
                                style: TextStyle(
                                  color: black1Color,
                                  fontWeight: FontWeight.w800,
                                ),
                              )
                            ],
                          )
                        ],
                      )),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Container(
                  height: 50,
                  margin: const EdgeInsets.only(left: 30, right: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                    border: Border.all(
                      width: 1.5,
                      color: black1Color,
                    ),
                  ),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        // ignore: deprecated_member_use
                        primary: const Color.fromARGB(
                          255,
                          37,
                          154,
                          185,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          Image.asset("images/drible.png"),
                          Row(
                            children: [
                              const Padding(padding: EdgeInsets.only(left: 10)),
                              Text(
                                "Instagram",
                                style: TextStyle(
                                  color: black1Color,
                                  fontWeight: FontWeight.w800,
                                ),
                              )
                            ],
                          )
                        ],
                      )),
                )
              ],
            ),
            const SizedBox(
              height: 140,
            ),
            Column(
              children: [
                Image.asset(
                  "images/logo.png",
                ),
              ],
            )
          ],
        ));
  }
}
