import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  final String url;
  const AboutScreen({Key? key, required this.url}) : super(key: key);

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  final castImages = [
    "https://i.pinimg.com/236x/8a/e0/1c/8ae01c2f04a9f7139fe211bcafad633f.jpg",
    "https://i.pinimg.com/236x/8e/ee/2d/8eee2d48a3613f6cf97716cbb5a24a65.jpg",
    "https://i.pinimg.com/236x/36/0e/6e/360e6e1318dd257c51f01f37cf27c862.jpg",
    "https://i.pinimg.com/474x/5c/3e/f8/5c3ef83becfd62b66b3b9726904e5589.jpg",
    "https://i.pinimg.com/474x/69/86/bf/6986bf2e29bee5fc17d7aa9db088fabb.jpg",
    "https://i.pinimg.com/474x/79/0d/f9/790df93834955042efb2a096f59f1f4b.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(18.0),
              topRight: Radius.circular(18.0),
            ),
            gradient: LinearGradient(colors: [
              Colors.grey.withOpacity(0.0),
              Colors.white.withOpacity(0.2),
            ]),
          ),
          height: 60,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Icon(
                Icons.home_outlined,
                color: Colors.white,
                size: 25,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Icon(
                Icons.play_circle_outline_outlined,
                color: Colors.white,
                size: 25,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
                size: 25,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_border_rounded,
                color: Colors.white,
                size: 25,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Icon(
                Icons.person_outline,
                color: Colors.white,
                size: 25,
              ),
            ),
          ])),
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
                            colors: [Colors.black, Colors.transparent])
                        .createShader(
                            Rect.fromLTRB(0, 0, rect.width, rect.height));
                  },
                  blendMode: BlendMode.dstIn,
                  child: Image.network(widget.url,
                      height: 500.0, fit: BoxFit.cover)),
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
                    color: const Color(0xFFD8CBAB),
                    height: 5,
                    width: MediaQuery.of(context).size.width - 40,
                    child: Container(
                      color: const Color(0xFF423D35),
                      height: 5,
                      width: MediaQuery.of(context).size.width - 60,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Stack(
                      clipBehavior: Clip.none,
                      fit: StackFit.passthrough,
                      children: [
                        Container(
                            height: 50,
                            child: const Center(
                                child: Text("Continue Watch",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontFamily: "San Francisco",
                                    ))),
                            width: MediaQuery.of(context).size.width - 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                gradient: const LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0xFFD8C39B),
                                      Color(0xFF986E3C),
                                    ]))),
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
