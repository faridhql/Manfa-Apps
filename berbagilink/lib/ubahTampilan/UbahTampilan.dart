// ignore_for_file: must_be_immutable

import 'package:berbagilink/widgets/text.dart';
import 'package:berbagilink/widgets/colorStyle.dart';
import 'package:berbagilink/halamanUtama/halamanutama.dart';
import 'package:berbagilink/ubahTampilan/Fitur/fitur.dart';
import 'package:berbagilink/ubahTampilan/header.dart';
import 'package:berbagilink/ubahTampilan/tautan/tautan.dart';
import 'package:flutter/material.dart';
import 'package:berbagilink/main.dart';
import 'dart:io';

class UbahTampilan extends StatefulWidget {
  IconData? icon;

  UbahTampilan({Key? key}) : super(key: key);

  @override
  State<UbahTampilan> createState() => _UbahTampilanState();
}

final List<Tab> myTabs = List.generate(
  3,
  (index) => Tab(text: 'TAB $index'),
);

class _UbahTampilanState extends State<UbahTampilan>
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

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(225, 37, 154, 185),
        toolbarHeight: 70,
        elevation: 0,
        
        
        title: Row(
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
        actions: [
          IconButton(
            iconSize: 65,
            onPressed: () {},
            icon: CircleAvatar(
                backgroundColor: biruBgColor,
                backgroundImage: const NetworkImage(
                    "https://img.esportsku.com/wp-content/uploads/2020/11/zilong.jpg")),
          ),
          
        ],
      ),
      body: SingleChildScrollView(
        child:  Column(
          children: [
            const Padding(padding: EdgeInsets.only(top: 15)),
            _tabsWidget(),
          ],
        ),
      ),
    );
  }

  // ignore: unused_element
  Container _tabsWidget() {
    // ignore: sized_box_for_whitespace
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 15),
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          const SizedBox(height: 16),
          // ignore: sized_box_for_whitespace
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15),
            width: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    // color: Color.fromARGB(255, 173, 169, 169),
                    borderRadius: BorderRadius.circular(64),
                    border: Border.all(
                      // color: grey1Color, //color of border
                      width: 1, //width of border
                    ),
                  ),
                  child: TabBar(
                    unselectedLabelColor: Colors.black,
                    labelColor: Colors.white,
                    indicatorColor: Colors.orange,
                    indicatorWeight: 2,
                    indicator: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(64),
                    ),
                    controller: tabController,
                    tabs: const [
                      Tab(
                        child: Text(
                          "Header",
                          style: TextStyle(
                            fontFamily: 'ubuntu',
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Fitur",
                          style: TextStyle(
                            fontFamily: 'ubuntu',
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Tautan",
                          style: TextStyle(
                            fontFamily: 'ubuntu',
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: const [
                Header(),
                Fitur(),
                Tautan(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
