import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Restaurant extends StatefulWidget {
  @override
  _Restaurant createState() => _Restaurant();
}

class _Restaurant extends State<Restaurant> {
  bool displayTop = true;
  var _controller;

  void _scrollListener() {
    setState(() {
      displayTop = false;
    });
  }

  @override
  void initState() {
    _controller = ScrollController();
    _controller.addListener(_scrollListener);
  }

  PreferredSize appBar() {
    return PreferredSize(
        child: Container(
          height: 80.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 50,
                  height: 50,
                  margin: EdgeInsets.all(15.0),
                  padding: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Icon(Ionicons.ios_arrow_back, color: Colors.black),
                ),
              ),
              Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 50,
                      height: 50,
                      margin: EdgeInsets.all(15.0),
                      padding: EdgeInsets.all(0),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(15.0)),
                      child:
                          Icon(Ionicons.ios_heart_empty, color: Colors.black),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 50,
                      height: 50,
                      margin: EdgeInsets.all(15.0),
                      padding: EdgeInsets.all(0),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Icon(Ionicons.ios_share, color: Colors.black),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        preferredSize: Size.fromHeight(80));
  }

  Widget child1() {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: Image.asset(
              'assets/images/img4.png'),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Conrad food',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontFamily: 'JosefinSans-Medium', fontSize: 25.0),
                        )
                      ],
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
                        Text(' 4.6 (221)'),
                        Icon(
                          Entypo.dot_single,
                          color: Color(0xff6e80b0),
                          size: 14,
                        ),
                        Text(
                          ' Pizza',
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
                          ' 15 min',
                          style: TextStyle(color: Color(0xff6e80b0)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  'More info',
                  style: TextStyle(color: Color(0xff9289f5)),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget child2() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      padding: EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Menu',
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

  Widget child2Alt() {
    return Container(
      height: 80.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              setState(() {
                displayTop = true;
              });
            },
            child: Container(
              width: 50,
              height: 50,
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(15.0)),
              child: Icon(Ionicons.ios_arrow_back, color: Colors.black),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15.0),
            child: Text(
              'Menu',
              style:
                  TextStyle(fontSize: 20.0, fontFamily: 'JosefinSans-Medium'),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 50,
              height: 50,
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(15.0)),
              child: Icon(Ionicons.md_options, color: Colors.black),
            ),
          )
        ],
      ),
    );
  }

  Widget child3() {
    return Container(
      height: 50.0,
      margin: EdgeInsets.only(left: 15.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            height: 50,
            width: 100,
            padding: EdgeInsets.all(5.0),
            margin: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Color(0xff6d61f2)),
            child: Center(
              child: Text(
                'Best Seller',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            height: 50,
            width: 100,
            padding: EdgeInsets.all(5.0),
            margin: EdgeInsets.all(5.0),
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
            child: Center(
              child: Text(
                'Veg Pizza',
              ),
            ),
          ),
          Container(
            height: 50,
            width: 100,
            padding: EdgeInsets.all(5.0),
            margin: EdgeInsets.all(5.0),
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
            child: Center(
              child: Text(
                'Pizza Mania',
              ),
            ),
          ),
          Container(
            height: 50,
            width: 100,
            padding: EdgeInsets.all(5.0),
            margin: EdgeInsets.all(5.0),
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
            child: Center(
              child: Text(
                'Cheese Pizza',
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget child4(context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
      child: ListView(
        controller: _controller,
        children: <Widget>[
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 7.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 80,
                    height: 80,
                    margin:
                        EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/images/img5.png',
                          width: 80,
                          height: 80,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.all(5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Text(
                            'Margherita',
                            style: TextStyle(
                                fontFamily: 'JosefinSans-Medium',
                                fontSize: 15.0),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Text(
                            'in Veg Pizza',
                            style: TextStyle(color: Color(0xff8090ba)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Text('\$12.50'),
                        )
                      ],
                    ),
                  )),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(5.0),
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.grey[200]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('Add'),
                              Icon(
                                Icons.add,
                                size: 18.0,
                                color: Color(0xff6d61f2),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            'Customizable',
                            style: TextStyle(
                                fontSize: 12.0, color: Color(0xff8090ba)),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 7.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 80,
                    height: 80,
                    margin:
                        EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/images/img6.png',
                          width: 80,
                          height: 80,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.all(5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Text(
                            'Veg Loaded',
                            style: TextStyle(
                                fontFamily: 'JosefinSans-Medium',
                                fontSize: 15.0),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Text(
                            'in Veg Pizza',
                            style: TextStyle(color: Color(0xff8090ba)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Text('\$8.50'),
                        )
                      ],
                    ),
                  )),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(5.0),
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.grey[200]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('Add'),
                              Icon(
                                Icons.add,
                                size: 18.0,
                                color: Color(0xff6d61f2),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            'Customizable',
                            style: TextStyle(
                                fontSize: 12.0, color: Color(0xff8090ba)),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 7.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 80,
                    height: 80,
                    margin:
                        EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/images/img7.png',
                          width: 80,
                          height: 80,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.all(5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Text(
                            'Farm House',
                            style: TextStyle(
                                fontFamily: 'JosefinSans-Medium',
                                fontSize: 15.0),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Text(
                            'in Veg Pizza',
                            style: TextStyle(color: Color(0xff8090ba)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Text('\$8.50'),
                        )
                      ],
                    ),
                  )),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(5.0),
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.grey[200]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('Add'),
                              Icon(
                                Icons.add,
                                size: 18.0,
                                color: Color(0xff6d61f2),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            'Customizable',
                            style: TextStyle(
                                fontSize: 12.0, color: Color(0xff8090ba)),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 7.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 80,
                    height: 80,
                    margin:
                        EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/images/img8.png',
                          width: 80,
                          height: 80,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.all(5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Text(
                            'Fresh Veggie',
                            style: TextStyle(
                                fontFamily: 'JosefinSans-Medium',
                                fontSize: 15.0),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Text(
                            'in Veg Pizza',
                            style: TextStyle(color: Color(0xff8090ba)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Text('\$11.99'),
                        )
                      ],
                    ),
                  )),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(5.0),
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.grey[200]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('Add'),
                              Icon(
                                Icons.add,
                                size: 18.0,
                                color: Color(0xff6d61f2),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            'Customizable',
                            style: TextStyle(
                                fontSize: 12.0, color: Color(0xff8090ba)),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 7.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 80,
                    height: 80,
                    margin:
                        EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/images/img9.png',
                          width: 80,
                          height: 80,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.all(5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Text(
                            'Tomato',
                            style: TextStyle(
                                fontFamily: 'JosefinSans-Medium',
                                fontSize: 15.0),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Text(
                            'in Veg Pizza',
                            style: TextStyle(color: Color(0xff8090ba)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Text('\$8'),
                        )
                      ],
                    ),
                  )),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(5.0),
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.grey[200]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('Add'),
                              Icon(
                                Icons.add,
                                size: 18.0,
                                color: Color(0xff6d61f2),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            'Customizable',
                            style: TextStyle(
                                fontSize: 12.0, color: Color(0xff8090ba)),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: displayTop
          ? appBar()
          : PreferredSize(
              child: Container(), preferredSize: Size.fromHeight(1.0)),
      body: Column(
        children: <Widget>[
          displayTop ? child1() : Container(),
          displayTop ? child2() : Container(),
          !displayTop ? child2Alt() : Container(),
          child3(),
          Expanded(child: child4(context))
        ],
      ),
    );
  }
}
