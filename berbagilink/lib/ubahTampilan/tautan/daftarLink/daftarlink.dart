import 'dart:io';

import 'package:berbagilink/tabbar%20judul/tabbar.dart';
import 'package:berbagilink/widgets/text.dart';
import 'package:berbagilink/widgets/colorStyle.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class daftarLink extends StatefulWidget {
  const daftarLink({super.key});

  @override
  State<daftarLink> createState() => _daftarLinkState();
}

class _daftarLinkState extends State<daftarLink> {
  File? image;

  Future getImage() async {
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
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(
              10,
            ),
          ),
          color: Color.fromARGB(225, 37, 154, 185)),
      margin: const EdgeInsets.only(left: 13, right: 13, bottom: 13, top: 13),
      child: ExpansionTile(
        collapsedIconColor: const Color.fromARGB(255, 0, 0, 0),
        title: Container(
          transform: Matrix4.translationValues(8, 0, 10),
          decoration:
              const BoxDecoration(color: Color.fromRGBO(37, 154, 185,0.1)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: const [
                Icon(
                  Icons.file_copy_outlined,
                  // color: biruColor,
                  size: 25,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Lihat Daftar Link',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),
                ),
              ],
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
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children:  [
                              tabDaftarLink()
                            ],
                          )
                        ],
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

class tabDaftarLink extends StatefulWidget {
  IconData? icon;

  tabDaftarLink({Key? key}) : super(key: key);

  @override
  State<tabDaftarLink> createState() => _UbahTampilanState();
}

final List<Tab> myTabs = List.generate(
  3,
  (index) => Tab(text: 'TAB $index'),
);

class _UbahTampilanState extends State<tabDaftarLink>
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
                    builder: (context) => tab1()
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
        child:  Container(
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.only(top: 15)),
              _tabsWidget(),
            ],
          ),
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
                // Header(),
                // Fitur(),
                // Tautan(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
