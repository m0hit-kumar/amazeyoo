import 'package:amazeyoo/bottomnavigator.dart';
import 'package:amazeyoo/links.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  final String url;
  const AboutScreen({Key? key, required this.url}) : super(key: key);

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      extendBody: true,
      bottomNavigationBar: const BottomNavigation(),
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              ShaderMask(
                  shaderCallback: (rect) {
                    // print(rect.height);
                    return const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Colors.white, Colors.transparent])
                        .createShader(
                            Rect.fromLTRB(0, 0, rect.width, rect.height));
                  },
                  blendMode: BlendMode.dstIn,
                  child: Image.network(widget.url,
                      width: double.maxFinite,
                      height: 500.0,
                      fit: BoxFit.cover)),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 24.0, top: 24.0, right: 24.0),
                    child: SizedBox(
                        // color: Colors.red,
                        height: 35,
                        width: double.maxFinite,
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.4),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                height: 35,
                                width: 35,
                                child: const Center(
                                  child: Icon(Icons.arrow_back_ios,
                                      size: 15, color: Colors.white),
                                ),
                              ),
                            ),
                            const Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              height: 35,
                              width: 35,
                              child: const Center(
                                child: Icon(Icons.open_in_new,
                                    size: 15, color: Colors.white),
                              ),
                            ),
                          ],
                        )),
                  ),
                  const Padding(
                    padding:
                        EdgeInsets.only(left: 24.0, bottom: 24.0, right: 24.0),
                    child: SizedBox(
                        height: 290,
                        // color: Colors.green,
                        width: double.maxFinite),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("New",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: "San Francisco",
                          )),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0, right: 8.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 3,
                        ),
                      ),
                      Text("Season 1",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: "San Francisco",
                          )),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Arcane",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                          color: Colors.white,
                          fontFamily: "San Francisco"),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          height: 35,
                          // width: 35,
                          child: const Center(
                            child: Text("12+",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          height: 35,
                          // width: 35,
                          child: const Center(
                            child: Text("League of Legend",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),

                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          height: 35,
                          // width: 35,
                          child: const Center(
                            child: Text("Netflix",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Row(
                      children: const [
                        Text('S1 : E1 "Episiode 1: Jinx Born"',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: "San Francisco",
                            )),
                        Spacer(),
                        Text("45 min",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: "San Francisco",
                            )),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 24.0,
                      right: 24.0,
                    ),
                    width: double.maxFinite,
                    height: 5,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(45),

                      color: const Color(0xFF433D37), //blue
                    ),
                    child: Container(
                      width: 210,
                      height: 5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45),
                          gradient: const LinearGradient(colors: [
                            Color(0xFFD8C39B),
                            Color(0xFF986E3C),
                          ])),
                      alignment: Alignment.center,
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    height: 55,
                    margin: const EdgeInsets.all(18.0),
                    // color: Colors.green,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 5,
                          left: 30,
                          width: 280,
                          height: 50,
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xFF986E3C),
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          width: 300,
                          child: Container(
                              height: 50,
                              child: const Center(
                                  child: Text("Continue Watch",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontFamily: "San Francisco",
                                      ))),
                              width: MediaQuery.of(context).size.width - 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  gradient: const LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Color(0xFFD8C39B),
                                        Color(0xFF986E3C),
                                      ]))),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 24.0, right: 24.0, bottom: 10.0),
                    child: Row(children: const [
                      Text("The Cast",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: "San Francisco",
                          )),
                      Spacer(),
                      Text("See all",
                          style: TextStyle(
                            color: Color(0xFF9A9085),
                            fontSize: 14,
                            fontFamily: "San Francisco",
                          ))
                    ]),
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    height: 60,
                    // color: Colors.green,
                    child: Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: castImages.length,
                        itemBuilder: (BuildContext context, int index) =>
                            Padding(
                          padding: const EdgeInsets.only(
                            left: 10.0,
                            right: 10.0,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: SizedBox(
                              width: 60,
                              height: 60,
                              child: Image.network(
                                castImages[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
