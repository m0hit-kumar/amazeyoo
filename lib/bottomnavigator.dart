<<<<<<< HEAD
import "package:flutter/material.dart";

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController2 = TabController(length: 5, vsync: this);

    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(10.0),
        topRight: Radius.circular(10.0),
        bottomLeft: Radius.zero,
      ),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.white,
            )
          ],
          color: Colors.black.withOpacity(0.6),
        ),
        child: TabBar(
          labelStyle: const TextStyle(fontSize: 10.0),
          indicatorColor: Colors.transparent,
          tabs: <Widget>[
            Tab(
              child: IconButton(
                enableFeedback: false,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                  size: 24.0,
                ),
              ),
            ),
            Tab(
              child: IconButton(
                enableFeedback: false,
                onPressed: () {},
                icon: const Icon(
                  Icons.play_circle_outline_outlined,
                  color: Colors.white,
                  size: 24.0,
                ),
              ),
            ),
            Tab(
              child: IconButton(
                enableFeedback: false,
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 24.0,
                ),
              ),
            ),
            Tab(
              child: IconButton(
                enableFeedback: false,
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border_rounded,
                  color: Colors.white,
                  size: 24.0,
                ),
              ),
            ),
            Tab(
              child: IconButton(
                enableFeedback: false,
                onPressed: () {},
                icon: const Icon(
                  Icons.person_outline,
                  color: Colors.white,
                  size: 24.0,
                ),
              ),
            ),
          ],
          controller: _tabController2,
        ),
      ),
    );
  }
}
=======
import "package:flutter/material.dart";

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController2 = TabController(length: 5, vsync: this);

    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(10.0),
        topRight: Radius.circular(10.0),
        bottomLeft: Radius.zero,
      ),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.white,
            )
          ],
          color: Colors.black.withOpacity(0.6),
        ),
        child: TabBar(
          labelStyle: const TextStyle(fontSize: 10.0),
          indicatorColor: Colors.transparent,
          tabs: <Widget>[
            Tab(
              child: IconButton(
                enableFeedback: false,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                  size: 24.0,
                ),
              ),
            ),
            Tab(
              child: IconButton(
                enableFeedback: false,
                onPressed: () {},
                icon: const Icon(
                  Icons.play_circle_outline_outlined,
                  color: Colors.white,
                  size: 24.0,
                ),
              ),
            ),
            Tab(
              child: IconButton(
                enableFeedback: false,
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 24.0,
                ),
              ),
            ),
            Tab(
              child: IconButton(
                enableFeedback: false,
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border_rounded,
                  color: Colors.white,
                  size: 24.0,
                ),
              ),
            ),
            Tab(
              child: IconButton(
                enableFeedback: false,
                onPressed: () {},
                icon: const Icon(
                  Icons.person_outline,
                  color: Colors.white,
                  size: 24.0,
                ),
              ),
            ),
          ],
          controller: _tabController2,
        ),
      ),
    );
  }
}
>>>>>>> 8651e8b7fd94990e78dcf4296ef21e6da82ab225
