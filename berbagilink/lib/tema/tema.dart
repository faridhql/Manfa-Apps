import 'package:berbagilink/halamanUtama/halamanutama.dart';
import 'package:flutter/material.dart';

import '../widgets/colorStyle.dart';
import '../widgets/text.dart';
import 'tab/tab_basic.dart';
import 'tab/tab_custom.dart';
import 'tab/tab_vectaraid.dart';

class Tema extends StatefulWidget {
  const Tema({super.key});

  @override
  State<Tema> createState() => _TemaState();
}

final List<Tab> myTabs = List.generate(
  3,
  (index) => Tab(text: 'TAB $index'),
);

class _TemaState extends State<Tema> with SingleTickerProviderStateMixin {
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
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xE0259AB9),
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
            Text(
              'Tema',
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
        child: Column(
          children: [
            _tabsWidget(),
          ],
        ),
      ),
    );
  }

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
            padding: EdgeInsets.only(left: 15, right: 15),
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
                          "Basic",
                          style: TextStyle(
                            fontFamily: 'ubuntu',
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Vectara.id",
                          style: TextStyle(
                            fontFamily: 'ubuntu',
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Custom",
                          style: TextStyle(
                            fontFamily: 'ubuntu',
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: const [
                Basic(),
                Vestaraid(),
                Custom(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
