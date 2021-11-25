import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'mainscreen.dart';

class FolderScreen extends StatefulWidget {
  FolderScreen({Key? key}) : super(key: key);

  @override
  _FolderScreenState createState() => _FolderScreenState();
}

class _FolderScreenState extends State<FolderScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Container(
                height: size.height,
                width: size.width * 0.3,
                child: Image.asset(
                  "assets/images/a.png",
                  fit: BoxFit.fill,
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: size.height * 0.1),
                  child: Row(
                    children: [
                      Container(
                        height: size.height * 0.05,
                        width: size.width * 0.03,
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.horizontal(
                                  right: Radius.circular(10))),
                          color: Colors.white70,
                          child: Padding(
                            padding: EdgeInsets.all(size.height * 0.005),
                            child: Image.asset("assets/images/back.png"),
                          ),
                          enableFeedback: false,
                          elevation: 20,
                          minWidth: double.maxFinite,
                          height: 40,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainScreen()));
                          },
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                        height: size.height * 0.05,
                        child: Text(
                          'FOLDER 1',
                          style: GoogleFonts.orbitron(
                              textStyle: Theme.of(context).textTheme.headline4,
                              fontSize: size.height * 0.05,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal,
                              color: Color(0xFF013b63)),
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: size.height * 0.05,
                        width: size.width * 0.03,
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(10))),
                          color: Colors.red,
                          child: Padding(
                            padding: EdgeInsets.all(size.height * 0.005),
                            child: Image.asset("assets/images/cancel.png"),
                          ),
                          enableFeedback: false,
                          elevation: 20,
                          minWidth: double.maxFinite,
                          height: 40,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      )
                      // Container(

                      //   height: size.height*0.05,
                      //   width: size.width*0.03,

                      //   decoration: const BoxDecoration(color: Color(0xFFFF6F6F),borderRadius: BorderRadius.horizontal(left: Radius.circular(10)),),
                      //   child: Center(child: Text("X")),

                      //   ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * 0.1),
                  child: SizedBox(
                      height: size.height * 0.55,
                      width: size.width * 0.45,
                      child: GridView.count(
                        primary: false,
                        padding: EdgeInsets.all(size.height * 0.01),
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 15,
                        crossAxisCount: 4,
                        children: <Widget>[
                          MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            color: Colors.blueGrey,
                            child: Center(
                              child: Container(
                                padding: EdgeInsets.all(0),
                                child: Image.asset(
                                  "assets/images/1.jpg",
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            enableFeedback: false,
                            elevation: 20,
                            minWidth: double.maxFinite,
                            height: 40,
                            onPressed: () {},
                          ),
                          MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            color: Colors.blueGrey,
                            child: Center(
                              child: Container(
                                padding: EdgeInsets.all(0),
                                child: Image.asset(
                                  "assets/images/2.jpg",
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            enableFeedback: false,
                            elevation: 20,
                            minWidth: double.maxFinite,
                            height: 40,
                            onPressed: () {},
                          ),
                          MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            color: Colors.blueGrey,
                            child: Center(
                              child: Container(
                                padding: EdgeInsets.all(0),
                                child: Image.asset(
                                  "assets/images/3.jpg",
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            enableFeedback: false,
                            elevation: 20,
                            minWidth: double.maxFinite,
                            height: 40,
                            onPressed: () {},
                          ),
                          MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            color: Colors.blueGrey,
                            child: Center(
                              child: Container(
                                padding: EdgeInsets.all(0),
                                child: Image.asset(
                                  "assets/images/4.jpg",
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            enableFeedback: false,
                            elevation: 20,
                            minWidth: double.maxFinite,
                            height: 40,
                            onPressed: () {},
                          ),
                          MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            color: Colors.blueGrey,
                            child: Center(
                              child: Container(
                                padding: EdgeInsets.all(size.height * 0.03),
                                child: Image.asset(
                                  "assets/images/add.png",
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            enableFeedback: false,
                            elevation: 20,
                            minWidth: double.maxFinite,
                            height: 40,
                            onPressed: () {},
                          )
                        ],
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * 0.1),
                  child: Container(
                    height: size.height * 0.02,
                    width: size.width,
                    //            color: Colors.red,
                    child: Center(
                        child: Text(
                      " Gizlilik Politikası  |  Hüküm ve Koşullar  |  Copyright © 2021 ProjectPoseidon Inc. Tüm hakları saklıdır.",
                      style: TextStyle(fontSize: size.height * 0.015),
                    )),
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
