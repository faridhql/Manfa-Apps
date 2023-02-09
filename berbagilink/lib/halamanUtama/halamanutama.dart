// ignore_for_file: must_be_immutable, avoid_unnecessary_containers, duplicate_ignore

import 'package:berbagilink/widgets/text.dart';
import 'package:berbagilink/widgets/colorStyle.dart';
import 'package:berbagilink/halamanUtama/tab_berbagilink.dart';
import 'package:berbagilink/halamanUtama/tabdashboard.dart';
import 'package:flutter/material.dart';

class BerbagiLink extends StatefulWidget {
  IconData? icon;

  BerbagiLink({Key? key}) : super(key: key);

  @override
  State<BerbagiLink> createState() => _BerbagiLinkState();
}

final List<Tab> myTabs = List.generate(
  2,
  (index) => Tab(text: 'TAB $index'),
);

class _BerbagiLinkState extends State<BerbagiLink>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  // ignore: prefer_typing_uninitialized_variables
  var kTitleTextStyle;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
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
        backgroundColor:
            const Color.fromRGBO(255, 255, 255, 1).withOpacity(0.4),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.handshake,
                  color: black1Color,
                  size: 25,),
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
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: dangerColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.help,
                              color: orangeColor,
                              size: 30,
                            ),
                            SizedBox(
                              width: size.width * 0.01,
                            ),
                            Text(
                              SetText.pelajari,
                              style: pelajariStyle,
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.keyboard_arrow_right_rounded,
                            size: 25,
                            color: orangeColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 000.02,
                  ),
                  Container(
                    height: size.height * 0.0020,
                    decoration: BoxDecoration(
                      color: greyColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 000.02,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      SetText.linkpunyamu,
                      style: linkpunyamuStyle,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 000.02,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        16,
                      ),
                      color: const Color(0xFFE3F2FD),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          SetText.linkberbagi,
                          style: berbagiStyle,
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.file_copy_rounded,
                                size: 25,
                                color: biruColor,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.qr_code_2,
                                size: 25,
                                color: biruColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            _tabsWidget(),
          ],
        ),
      ),
    );
  }

  Container _tabsWidget() {
    Size size = MediaQuery.of(context).size;

    // ignore: sized_box_for_whitespace
    return Container(
      height: size.height,
      child: Column(
        children: [
          SizedBox(
            height: size.height * 000.02,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            width: size.width,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    // color: Color.fromARGB(255, 173, 169, 169),
                    borderRadius: BorderRadius.circular(64),
                    border: Border.all(
                      color: Colors.grey, //color of border
                      width: 1, //width of border
                    ),
                  ),
                  child: TabBar(
                    unselectedLabelColor: Colors.grey,
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
                        text: 'Dashboard',
                      ),
                      Tab(
                        text: ('Menu berbagilink'),
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
                TabDashboard(),
                Tabberbagilink(),
                // TabBerbagiLink(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
