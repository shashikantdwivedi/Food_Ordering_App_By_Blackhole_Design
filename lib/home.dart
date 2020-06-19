import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'restaurant.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

Widget bottomNavItemIcon(int currentIndex, bool choice, int index) {
  Color selectedNavItemColor = Color(0xff6d61f2);
  Color unselectedNavItemColor = Colors.black;
  List<Icon> icons = [
    Icon(
      Icons.home,
      color: currentIndex == 0 ? selectedNavItemColor : unselectedNavItemColor,
    ),
    Icon(
      Icons.search,
      color: currentIndex == 1 ? selectedNavItemColor : unselectedNavItemColor,
    ),
    Icon(
      Icons.shopping_cart,
      color: currentIndex == 2 ? selectedNavItemColor : unselectedNavItemColor,
    ),
    Icon(
      Icons.person,
      color: currentIndex == 3 ? selectedNavItemColor : unselectedNavItemColor,
    )
  ];
  List itemName = [
    Text(
      'Home',
      style: TextStyle(
        color:
            currentIndex == 0 ? selectedNavItemColor : unselectedNavItemColor,
      ),
    ),
    Text(
      'Search',
      style: TextStyle(
        color:
            currentIndex == 1 ? selectedNavItemColor : unselectedNavItemColor,
      ),
    ),
    Text(
      'Cart',
      style: TextStyle(
        color:
            currentIndex == 2 ? selectedNavItemColor : unselectedNavItemColor,
      ),
    ),
    Text(
      'Profile',
      style: TextStyle(
        color:
            currentIndex == 3 ? selectedNavItemColor : unselectedNavItemColor,
      ),
    )
  ];

  if (choice) {
    return icons[index];
  } else if (index == currentIndex) {
    return itemName[index];
  } else {
    return Text('');
  }
}

class _HomeState extends State<Home> {
  int selectedNavItem = 0;

  void onNavChange(index) {
    setState(() {
      selectedNavItem = index;
    });
  }

  Widget bottomBar() {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        GestureDetector(
          onTap: () {
            onNavChange(0);
          },
          child: Container(
            margin: EdgeInsets.all(5.0),
            padding: EdgeInsets.all(5.0),
            decoration: selectedNavItem == 0
                ? BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(15))
                : BoxDecoration(),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: bottomNavItemIcon(selectedNavItem, true, 0),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: bottomNavItemIcon(selectedNavItem, false, 0),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            onNavChange(1);
          },
          child: Container(
            margin: EdgeInsets.all(5.0),
            padding: EdgeInsets.all(5.0),
            decoration: selectedNavItem == 1
                ? BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(15))
                : BoxDecoration(),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: bottomNavItemIcon(selectedNavItem, true, 1),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: bottomNavItemIcon(selectedNavItem, false, 1),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            onNavChange(2);
          },
          child: Container(
            margin: EdgeInsets.all(5.0),
            padding: EdgeInsets.all(5.0),
            decoration: selectedNavItem == 2
                ? BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(15))
                : BoxDecoration(),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: bottomNavItemIcon(selectedNavItem, true, 2),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: bottomNavItemIcon(selectedNavItem, false, 2),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            onNavChange(3);
          },
          child: Container(
            margin: EdgeInsets.all(5.0),
            padding: EdgeInsets.all(5.0),
            decoration: selectedNavItem == 3
                ? BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(15))
                : BoxDecoration(),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: bottomNavItemIcon(selectedNavItem, true, 3),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: bottomNavItemIcon(selectedNavItem, false, 3),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }

  PreferredSize appBar() {
    return PreferredSize(
        child: Container(
          height: 80,
//          decoration: BoxDecoration(border: Border.all()),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(15),
                child: Icon(
                  Icons.location_on,
                  color: Color(0xff6d61f2),
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Home',
                      style: TextStyle(
                          fontFamily: 'JosefinSans-Medium', fontSize: 20.0),
                    ),
                    Text(
                      '242 ST Marks Eve, Finland ',
                      style: TextStyle(color: Color(0xff8090ba)),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        preferredSize: Size.fromHeight(80));
  }

  Widget homeChild1() {
    return Container(
//            decoration: BoxDecoration(border: Border.all()),
      height: 80,
      margin: EdgeInsets.only(top: 25),
      padding: EdgeInsets.only(left: 5.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 70,
            height: 70,
            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            decoration: BoxDecoration(
                color: Color(0xff6d61f2),
                borderRadius: BorderRadius.circular(25.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/icons/home4.png',
                  width: 25,
                  height: 25,
                ),
              ],
            ),
          ),
          Container(
            width: 70,
            height: 70,
            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(25.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/icons/home2.png',
                  width: 25,
                  height: 25,
                ),
              ],
            ),
          ),
          Container(
            width: 70,
            height: 70,
            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(25.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/icons/home3.png',
                  width: 25,
                  height: 25,
                ),
              ],
            ),
          ),
          Container(
            width: 70,
            height: 70,
            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(25.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/icons/home1.png',
                  width: 25,
                  height: 25,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget homeChild2() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Popular Restaurents',
            style: TextStyle(fontFamily: 'JosefinSans-Medium', fontSize: 20.0),
          ),
          IconButton(
              icon: Icon(
                Ionicons.md_options,
                size: 20,
                color: Colors.black,
              ),
              onPressed: null)
        ],
      ),
    );
  }

  Widget homeChild3() {
    return Container(
      margin: EdgeInsets.only(left: 10.0, right: 10.0),
      child: ListView(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Restaurant()));
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 7.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 70,
                    height: 70,
                    margin:
                        EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                    decoration: BoxDecoration(
                        color: Color(0xfffde901),
                        borderRadius: BorderRadius.circular(25.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/icons/home5.png',
                          width: 25,
                          height: 25,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          'Conrad food',
                          style: TextStyle(
                              fontFamily: 'JosefinSans-Medium', fontSize: 15.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: Colors.orangeAccent,
                              size: 16,
                            ),
                            Text('4.6'),
                            Icon(
                              Entypo.dot_single,
                              color: Color(0xff6e80b0),
                              size: 14,
                            ),
                            Text(
                              'Pizza',
                              style: TextStyle(color: Color(0xff6e80b0)),
                            ),
                            Icon(
                              Entypo.dot_single,
                              color: Color(0xff6e80b0),
                              size: 14,
                            ),
                            Icon(
                              Icons.access_time,
                              color: Color(0xff6e80b0),
                              size: 14,
                            ),
                            Text(
                              '15 min',
                              style: TextStyle(color: Color(0xff6e80b0)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Text('50% OFF',
                            style: TextStyle(
                                fontFamily: 'JosefinSans-Medium',
                                fontSize: 14.0,
                                color: Color(0xff6d61f2))),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(''),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Restaurant()));
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 7.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 70,
                    height: 70,
                    margin:
                        EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                    decoration: BoxDecoration(
                        color: Color(0xff57ce96),
                        borderRadius: BorderRadius.circular(25.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/icons/home6.png',
                          width: 25,
                          height: 25,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          'SK Restro',
                          style: TextStyle(
                              fontFamily: 'JosefinSans-Medium', fontSize: 15.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: Colors.orangeAccent,
                              size: 16,
                            ),
                            Text('4.4'),
                            Icon(
                              Entypo.dot_single,
                              color: Color(0xff6e80b0),
                              size: 14,
                            ),
                            Text(
                              'Soup',
                              style: TextStyle(color: Color(0xff6e80b0)),
                            ),
                            Icon(
                              Entypo.dot_single,
                              color: Color(0xff6e80b0),
                              size: 14,
                            ),
                            Icon(
                              Icons.access_time,
                              color: Color(0xff6e80b0),
                              size: 14,
                            ),
                            Text(
                              '30 min',
                              style: TextStyle(color: Color(0xff6e80b0)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Text('40% OFF',
                            style: TextStyle(
                                fontFamily: 'JosefinSans-Medium',
                                fontSize: 14.0,
                                color: Color(0xff6d61f2))),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(''),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Restaurant()));
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 7.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 70,
                      height: 70,
                      margin:
                          EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                      decoration: BoxDecoration(
                          color: Color(0xff000001),
                          borderRadius: BorderRadius.circular(25.0)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/icons/home7.png',
                            width: 25,
                            height: 25,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            'Black Fish',
                            style: TextStyle(
                                fontFamily: 'JosefinSans-Medium',
                                fontSize: 15.0),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: Colors.orangeAccent,
                                size: 16,
                              ),
                              Text('4.3'),
                              Icon(
                                Entypo.dot_single,
                                color: Color(0xff6e80b0),
                                size: 14,
                              ),
                              Text(
                                'Pasta',
                                style: TextStyle(color: Color(0xff6e80b0)),
                              ),
                              Icon(
                                Entypo.dot_single,
                                color: Color(0xff6e80b0),
                                size: 14,
                              ),
                              Icon(
                                Icons.access_time,
                                color: Color(0xff6e80b0),
                                size: 14,
                              ),
                              Text(
                                '20 min',
                                style: TextStyle(color: Color(0xff6e80b0)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Text('40% OFF',
                              style: TextStyle(
                                  fontFamily: 'JosefinSans-Medium',
                                  fontSize: 14.0,
                                  color: Color(0xff6d61f2))),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(''),
                        )
                      ],
                    )
                  ],
                ),
              )),
          GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Restaurant()));
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 7.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 70,
                      height: 70,
                      margin:
                          EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                      decoration: BoxDecoration(
                          color: Color(0xff9a7c48),
                          borderRadius: BorderRadius.circular(25.0)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/icons/home8.png',
                            width: 25,
                            height: 25,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            'Goichi Oniko',
                            style: TextStyle(
                                fontFamily: 'JosefinSans-Medium',
                                fontSize: 15.0),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: Colors.orangeAccent,
                                size: 16,
                              ),
                              Text('4.0'),
                              Icon(
                                Entypo.dot_single,
                                color: Color(0xff6e80b0),
                                size: 14,
                              ),
                              Text(
                                'Spicy',
                                style: TextStyle(color: Color(0xff6e80b0)),
                              ),
                              Icon(
                                Entypo.dot_single,
                                color: Color(0xff6e80b0),
                                size: 14,
                              ),
                              Icon(
                                Icons.access_time,
                                color: Color(0xff6e80b0),
                                size: 14,
                              ),
                              Text(
                                '20 min',
                                style: TextStyle(color: Color(0xff6e80b0)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Text('50% OFF',
                              style: TextStyle(
                                  fontFamily: 'JosefinSans-Medium',
                                  fontSize: 14.0,
                                  color: Color(0xff6d61f2))),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(''),
                        )
                      ],
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      bottomNavigationBar: bottomBar(),
      body: Column(
        children: <Widget>[
          homeChild1(),
          homeChild2(),
          Expanded(
            child: homeChild3(),
          )
        ],
      ),
    );
  }
}
