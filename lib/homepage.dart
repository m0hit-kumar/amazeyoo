import 'package:amazeyoo/bottomnavigator.dart';
import 'package:amazeyoo/detail.dart';
import 'package:amazeyoo/links.dart';
import 'package:amazeyoo/widgets.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    const TextStyle _fontStyle = TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontFamily: "San Francisco",
    );

    const TextStyle _seeAll = TextStyle(
      color: Color(0xFF9A9085),
      fontSize: 14,
      fontFamily: "San Francisco",
    );
    TabController _tabController = TabController(length: 4, vsync: this);

    final controller =
        PageController(initialPage: 1, viewportFraction: 0.8, keepPage: true);

    return SafeArea(
      child: Scaffold(
          extendBody: true,
          bottomNavigationBar: const BottomNavigation(),
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.center,
                colors: [
                  Color(0xFF2A231A),
                  Color(0xFF141414),
                ],
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Container(
                  //   height: 250,
                  //   color: Colors.red,
                  //   child: PageView.builder(
                  //     controller: controller,
                  //     scrollDirection: Axis.horizontal,
                  //     itemCount: urlImages.length,
                  //     itemBuilder: (BuildContext context, int index) => Padding(
                  //       padding: const EdgeInsets.only(
                  //         left: 10.0,
                  //         right: 10.0,
                  //       ),
                  //       child: GestureDetector(
                  //         onTap: () {
                  //           Navigator.push(
                  //               context,
                  //               MaterialPageRoute(
                  //                   builder: (context) =>
                  //                       AboutScreen(url: urlImages[index])));
                  //         },
                  //         child: ClipRRect(
                  //           borderRadius: BorderRadius.circular(8),
                  //           child: SizedBox(
                  //             width: 110,
                  //             height: 130,
                  //             child: Image.network(
                  //               urlImages[index],
                  //               fit: BoxFit.cover,
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // Center(
                  //   child: SmoothPageIndicator(
                  //       controller: controller,
                  //       count: urlImages.length,
                  //       effect: const ColorTransitionEffect(
                  //           activeDotColor: Colors.red, dotColor: Colors.blue)),
                  // ),

                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Row(
                      children: [
                        const CircleAvatar(
                            radius: 20,
                            foregroundImage: NetworkImage(
                                "https://i.pinimg.com/736x/35/e1/92/35e192aadc25681d075c89e23070d974.jpg")),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 12,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Hello,",
                                  // textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: "San Francisco",
                                  ),
                                  textAlign: TextAlign.left),
                              Text("Timur K.",
                                  // textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "San Francisco",
                                  ),
                                  textAlign: TextAlign.left),
                            ],
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
                            child: Icon(Icons.notifications_none,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.only(bottom: 15),
                    // color: Colors.green,
                    width: double.maxFinite,
                    height: 20,
                    child: TabBar(
                      isScrollable: false,
                      indicatorColor: Colors.transparent,
                      controller: _tabController,
                      tabs: const [
                        Tab(
                          text: "Movies",
                        ),
                        Tab(
                          text: "TV Shows",
                        ),
                        Tab(
                          text: "Anime",
                        ),
                        Tab(
                          text: "My List",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 250,
                    // color: Colors.red,
                    child: PageView.builder(
                        controller: controller,
                        scrollDirection: Axis.horizontal,
                        itemCount: imglist.length,
                        itemBuilder: (BuildContext context, int index) =>
                            imageSliders(context, index)),
                  ),
                  Center(
                    child: SmoothPageIndicator(
                        controller: controller,
                        count: imglist.length,
                        effect: const ColorTransitionEffect(
                            dotHeight: 10.0,
                            dotWidth: 10.0,
                            activeDotColor: Colors.white,
                            dotColor: Colors.grey)),
                  ),

                  SizedBox(
                    width: double.maxFinite,
                    height: 600,
                    child: TabBarView(
                      physics: const NeverScrollableScrollPhysics(),
                      controller: _tabController,
                      children: [
                        SizedBox(
                            width: double.maxFinite,
                            height: 600,
                            // color: Colors.red,
                            child: ListView(
                              children: [
                                // SizedBox(height: 25, width: double.maxFinite),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Row(children: const [
                                    Text("Recent Watched", style: _fontStyle),
                                    Spacer(),
                                    Text("See all", style: _seeAll)
                                  ]),
                                ),
                                SizedBox(
                                  width: double.maxFinite,
                                  height: 150,
                                  // color: Colors.green,
                                  child: ListView.builder(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemCount: urlImages.length,
                                    itemBuilder:
                                        (BuildContext context, int index) =>
                                            Padding(
                                      padding: const EdgeInsets.only(
                                        left: 10.0,
                                        right: 10.0,
                                      ),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      AboutScreen(
                                                          url: urlImages[
                                                              index])));
                                        },
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: SizedBox(
                                            width: 110,
                                            height: 130,
                                            child: Image.network(
                                              urlImages[index],
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Row(children: const [
                                    Text("My Favorites", style: _fontStyle),
                                    Spacer(),
                                    Text("See all", style: _seeAll)
                                  ]),
                                ),
                                SizedBox(
                                  width: double.maxFinite,
                                  height: 150,
                                  // color: Colors.green,
                                  child: ListView.builder(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemCount: urlImages.length,
                                    itemBuilder:
                                        (BuildContext context, int index) =>
                                            Padding(
                                      padding: const EdgeInsets.only(
                                        left: 10.0,
                                        right: 10.0,
                                      ),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      AboutScreen(
                                                          url: urlImages[
                                                              index])));
                                        },
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: SizedBox(
                                            width: 110,
                                            height: 130,
                                            child: Image.network(
                                              urlImages[index],
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        Container(
                            width: double.maxFinite,
                            height: 600,
                            color: Colors.yellow),
                        const SizedBox(
                          width: double.maxFinite,
                          height: 600,
                          // color: Colors.green
                        ),
                        Container(
                            width: double.maxFinite,
                            height: 600,
                            color: Colors.pink),
                      ],
                      // children: [
                      //   Container(
                      //     width: double.maxFinite,
                      //     height: 800,
                      //     // color: Colors.yellow,
                      //     child: CarouselSlider.builder(
                      //         itemCount: urlImages.length,
                      //         itemBuilder: (context, index, realIndex) {
                      //           final urlImage = urlImages[index];
                      //           return buildImage(urlImage, index);
                      //         },
                      //         options: CarouselOptions(height: 200)),
                      //   ),
                      //   ListView.builder(
                      //       itemCount: 5,
                      //       itemBuilder: (BuildContext context, int index) {
                      //         return const ListTile(
                      //           trailing: Text(
                      //             "GFG",
                      //           ),
                      //         );
                      //       }),
                      //   Container(
                      //     width: double.maxFinite,
                      //     height: 800,
                      //     color: Colors.white,
                      //     child: Text("nk"),
                      //   ),
                      //   Container(
                      //     width: double.maxFinite,
                      //     height: 800,
                      //     color: Colors.white,
                      //     child: Text("nk"),
                      //   ),
                      // ],
                    ),
                  )

                  // const SizedBox(height: 200),
                  // Container(
                  //   height: 250,
                  //   color: Colors.red,
                  //   child: PageView.builder(
                  //     controller: controller,
                  //     scrollDirection: Axis.horizontal,
                  //     itemCount: urlImages.length,
                  //     itemBuilder: (BuildContext context, int index) => Padding(
                  //       padding: const EdgeInsets.only(
                  //         left: 10.0,
                  //         right: 10.0,
                  //       ),
                  //       child: GestureDetector(
                  //         onTap: () {
                  //           Navigator.push(
                  //               context,
                  //               MaterialPageRoute(
                  //                   builder: (context) =>
                  //                       AboutScreen(url: urlImages[index])));
                  //         },
                  //         child: ClipRRect(
                  //           borderRadius: BorderRadius.circular(8),
                  //           child: SizedBox(
                  //             width: 110,
                  //             height: 130,
                  //             child: Image.network(
                  //               urlImages[index],
                  //               fit: BoxFit.cover,
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // Center(
                  //   child: SmoothPageIndicator(
                  //       controller: controller,
                  //       count: urlImages.length,
                  //       effect: const ColorTransitionEffect(
                  //           activeDotColor: Colors.red, dotColor: Colors.blue)),
                  // ),
                ],
              ),
            ),
          )),
    );
  }
}
