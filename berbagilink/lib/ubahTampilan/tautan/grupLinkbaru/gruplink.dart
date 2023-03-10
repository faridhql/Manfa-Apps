// ignore_for_file: camel_case_types

// ignore: unused_import
import 'package:berbagilink/ubahTampilan/tautan/grupLinkbaru/tab_gruplink/ikongrupkbaru.dart';
import 'package:berbagilink/ubahTampilan/tautan/grupLinkbaru/tab_gruplink/link_grup.dart';
import 'package:berbagilink/ubahTampilan/tautan/grupLinkbaru/tab_gruplink/ubahwarnagrupLink.dart';
// ignore: unused_import
import 'package:berbagilink/widgets/colorStyle.dart';
import 'package:flutter/material.dart';

// ignore: unused_import
import '../../../tabbar judul/judul.dart';

// ignore:
class gruplink extends StatefulWidget {
  const gruplink({super.key});

  @override
  State<gruplink> createState() => _gruplinkState();
}

final List<Tab> myTabs = List.generate(
  3,
  (index) => Tab(text: 'TAB $index'),
);

class _gruplinkState extends State<gruplink>
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

// class _gruplinkState extends State<gruplink> {
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
    // ignore: unused_local_variable
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
              const BoxDecoration(color: Color.fromRGBO(37, 154, 185, 0.1)),
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
                Text('Buat Grup Link Baru',
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
      height: 300,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 0, right: 0),
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(),
                  child: TabBar(
                    unselectedLabelColor: Colors.black,
                    // labelColor: Colors.black,
                    // indicatorColor: Colors.black,
                    // indicatorWeight: 02,
                    labelColor: Colors.black,
                    indicator: UnderlineTabIndicator(),
                    controller: tabController,
                    tabs: const [
                      Tab(
                        child: Text(
                          "Link",
                          style: TextStyle(
                            fontFamily: 'ubuntu',
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Ikon",
                          style: TextStyle(
                            fontFamily: 'ubuntu',
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Warna Link",
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
              children: const [grupLinkbaru(), ikonGrupbaru(), ubahwarnagruplink()],
            ),
          ),
        ],
      ),
    );
  }
}
