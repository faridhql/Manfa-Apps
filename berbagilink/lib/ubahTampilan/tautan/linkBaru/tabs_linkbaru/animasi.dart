
import 'package:berbagilink/widgets/text.dart';
import 'package:berbagilink/widgets/colorStyle.dart';
import 'package:flutter/material.dart';

class animasiLinkbaru extends StatefulWidget {
  const animasiLinkbaru({super.key});

  @override
  State<animasiLinkbaru> createState() => _Tabs1State();
}

final List<Tab> myTabs = List.generate(
  3,
  (index) => Tab(text: 'TAB $index'),
);

class _Tabs1State extends State<animasiLinkbaru>
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
        borderRadius: const BorderRadius.only(
        
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
            
            const SizedBox(
              height: 16,
            ),

            Row(
              children: const [
                Text(
                  "Animasi",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
  Column(
              children: [
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                    border: Border.all(
                      width: 0.3,
                      color: black1Color,
                    ),
                  ),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        // ignore: deprecated_member_use
                        backgroundColor: Colors.orangeAccent.shade100,
                        
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                      ),
                      child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          
                          Row(
                            children: [
                              const Padding(padding: EdgeInsets.only(left: 10)),
                              Text(
                                "Pilih Tipe",
                                style: TextStyle(
                                  color: black1Color,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          ),
                              Row(
                                children: const [
                                  Icon(Icons.keyboard_arrow_down_sharp,color: Colors.black,),
                                ],
                              )
                        ],
                      )),
                )
              ],
            ),
          
            

            const SizedBox(
              height: 50,
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
          ],
        ),
      ),
    );
  }
}
