import 'package:berbagilink/ubahTampilan/tautan/daftarLink/tab_daftarlink/instagram/instagram.dart';
import 'package:berbagilink/ubahTampilan/tautan/linkBaru/tabs_linkbaru/animasi.dart';
import 'package:berbagilink/ubahTampilan/tautan/linkBaru/tabs_linkbaru/arahkan.dart';
import 'package:berbagilink/ubahTampilan/tautan/linkBaru/tabs_linkbaru/ikonlinkbaru.dart';
import 'package:berbagilink/ubahTampilan/tautan/linkBaru/tabs_linkbaru/judul.dart';
import 'package:berbagilink/ubahTampilan/tautan/linkBaru/tabs_linkbaru/penjadwalanLink.dart';
import 'package:berbagilink/ubahTampilan/tautan/linkBaru/tabs_linkbaru/sublink.dart';
import 'package:berbagilink/ubahTampilan/tautan/linkBaru/tabs_linkbaru/warnalinkbaru.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class DaftarLink extends StatefulWidget {
  const DaftarLink({super.key});

  @override
  State<DaftarLink> createState() => _DaftarLink();
}

final List<Tab> myTabs = List.generate(
  7,
  (index) => Tab(text: 'TAB $index'),
);

// ignore: camel_case_types
class _DaftarLink extends State<DaftarLink>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  // ignore: prefer_typing_uninitialized_variables
  var kTitleTextStyle;

  @override
  void initState() {
    tabController = TabController(length: 7, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

// class _DaftarLink extends State<DaftarLink> {
  // File? image;
  // late TabController tabController;

  // Future getImage() async {
  //   final ImagePicker _picker = ImagePicker();
  //   final XFile? ImagePicked =
  //       await _picker.pickImage(source: ImageSource.gallery);
  //   image = File(ImagePicked!.path);
  //   setState(() {});
//   }

  bool isDisabled = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            10,
          ),
        ),
        color: Color.fromARGB(225,247, 171, 27),
      ),
   
      child: ExpansionTile(
        collapsedIconColor: const Color.fromARGB(255, 0, 0, 0),
        title: Container(
          transform: Matrix4.translationValues(8, 0, 10),
          decoration:
              const BoxDecoration(color: Color.fromRGBO(37, 154, 185, 0.0)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
         Image.asset("images/ig.png"),
                const SizedBox(
                  width: 10,
                ),
                const Text('Instagram',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
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
            child: Column(
              children: [
                //Judul
                _tabsWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _tabsWidget() {
    // ignore: sized_box_for_whitespace
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 15),
      height: 320,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 0, right: 0),
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(),
                  child: TabBar(
                    isScrollable: true,
                    unselectedLabelColor: Colors.black,
                    // labelColor: Colors.black,
                    // indicatorColor: Colors.black,
                    // indicatorWeight: 02,

                    indicator: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(1),
                    ),
                    controller: tabController,
                    
                    tabs:   const [
                      // 1
                      Tab(
                        child: Text(
                          "Judul",
                          style: TextStyle(
                            fontFamily: 'ubuntu',
                            fontSize: 17,
                          ),
                        ),
                      ),
                      // 2
                      Tab(
                        child: Text(
                          "sublink",
                          style: TextStyle(
                            fontFamily: 'ubuntu',
                            fontSize: 17,
                           
                          ),
                        ),
                      ),
                      // 3
                      Tab(
                        child: Text(
                          "Warna",
                          style: TextStyle(
                            fontFamily: 'ubuntu',
                            fontSize: 17,
                          ),
                        ),
                      ),
                      // 4
                      Tab(
                        child: Text(
                          "Ikon",
                          style: TextStyle(
                            fontFamily: 'ubuntu',
                            fontSize: 17,
                          ),
                        ),
                      ),
                      // 5
                      Tab(
                        child: Text(
                          "Penjadwalan",
                          style: TextStyle(
                            fontFamily: 'ubuntu',
                            fontSize: 17,
                          ),
                        ),
                      ),
                      // 6
                      Tab(
                        child: Text(
                          "Animasi",
                          style: TextStyle(
                            fontFamily: 'ubuntu',
                            fontSize: 17,
                          ),
                        ),
                      ),
                      // 7
                      Tab(
                        child: Text(
                          "Arahkan",
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
                instagram(),
                // subLink(),
                // warnaLinkbaru(),
                // ikonLinkBaru(),
                // penjadwalanLink(),
                // animasiLinkbaru(),
                // arahkanlinkbaru()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
