import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/mainscreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

final List<String> imageList = [
  "https://d.neoldu.com/news/68637.jpg",
];

class _HomePageState extends State<HomePage> {
  late int _initialPageindex;

  //final List<int> colorCodes = <int>[600, 500, 100];

  @override
  void initState() {
    _initialPageindex = 0;

    // TODO: implement initState
    super.initState();
  }

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
              child: Image.asset("assets/images/a.jpeg", fit: BoxFit.fill)),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(),
                    Text(
                      "Project Posedion",
                      style: TextStyle(
                          fontSize: size.width * 0.04,
                          color: Color(0xFF013B63),
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    DefaultButton(
                      text: "MetaMask",
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainScreen()));
                      },
                      width: size.width * 0.18,
                      height: size.height * 0.06,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.07,
              ),
              Container(
                height: size.height * 0.5,
                width: size.width * 1,
                child: AnimatedContainer(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(0)),
                  duration: Duration(milliseconds: 300),
                  child: CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: EdgeInsets.only(top: size.height * 0.01),
                          child: SizedBox(
                            width: size.width,
                            height: size.height * 0.45,
                            child: CarouselSlider(
                              options: CarouselOptions(
                                initialPage: _initialPageindex,
                                onPageChanged: (index, _) {
                                  setState(() {
                                    _initialPageindex = index;
                                  });
                                },
                                enlargeCenterPage: true,
                                enableInfiniteScroll: true,
                                autoPlay: true,
                              ),
                              items: imageList
                                  .map((e) => ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Stack(
                                            fit: StackFit.expand,
                                            children: <Widget>[
                                              Image.network(
                                                e,
                                                width: size.width * 0.7,
                                                height: size.height * 0.18,
                                                fit: BoxFit.cover,
                                              )
                                            ]),
                                      ))
                                  .toList(),
                            ),
                          ),
                        ),
                      ),
                      SliverToBoxAdapter(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.transparent,
                          height: 12,
                          child: Center(
                            child: ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: imageList.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.only(left: 2, right: 2),
                                  child: AnimatedContainer(
                                      width:
                                          index != _initialPageindex ? 12 : 23,
                                      height:
                                          index != _initialPageindex ? 15 : 5,
                                      decoration: BoxDecoration(
                                        color: index != _initialPageindex
                                            ? Color(0XFFE5E5E5)
                                            : Color(0XFF013B63),
                                        borderRadius: index != _initialPageindex
                                            ? BorderRadius.circular(50)
                                            : BorderRadius.circular(20),
                                        // shape: index != _initialPageindex
                                        //     ? BoxShape.circle
                                        //     : BoxShape.rectangle),
                                      ),
                                      duration: Duration(milliseconds: 250)),
                                );
                              },
                            ),
                          ),
                        ),
                      )),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Denizlerin şeffaflığı kadar şeffaf, sertliği kadar güvenlik için.",
                    style: TextStyle(
                        color: Color(0xFF013B63),
                        fontSize: size.height * 0.025,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              Row(
                children: [
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                  Text(
                    "Project Posedion",
                    style: TextStyle(
                        color: Color(0xFF013B63),
                        fontSize: size.height * 0.018,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: size.width * 0.03,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Biz Kimiz ?",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    width: size.width * 0.03,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Hizmetlerimiz",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    width: size.width * 0.03,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "İletişim",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )),
                ],
              )
            ],
          ),
          SizedBox(
            height: size.height * 0.8,
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class DefaultButton extends StatelessWidget {
  var press;
  final String text;
  final double width;
  final double height;

  DefaultButton({
    required this.text,
    required this.press,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
        width: width,
        height: height,
        child: MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: Color(0xFF013B63),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: size.width * 0.02,
              ),
            ),
          ),
          enableFeedback: false,
          minWidth: double.maxFinite,
          height: size.height * 0.1,
          onPressed: press,
        ));
  }
}
