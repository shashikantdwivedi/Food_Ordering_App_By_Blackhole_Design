import 'package:flutter/material.dart';
import 'login.dart';

class OnBoarding extends StatelessWidget {
  PageController _controller = PageController(initialPage: 0);

  @override
  void dispose() {
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        pageSnapping: true,
        controller: _controller,
        children: <Widget>[
          Slide1(
            controller: _controller,
          ),
          Slide2(controller: _controller),
          Slide3(controller: _controller)
        ],
      ),
    );
  }
}

class Slide1 extends StatelessWidget {
  Slide1({this.controller});

  PageController controller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              height: 70.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                      child: Text('Skip',
                          style: TextStyle(
                              color: Color(0xff6E80B0),
                              fontFamily: 'JosefinSans-Medium')))
                ],
              ),
            ),
            Container(
              height: 40.0,
            ),
            Container(
              child: Image.asset(
                'assets/images/img1.png',
                scale: 4.2,
              ),
            ),
            Container(
              height: 40.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              child: Text(
                'Be Together',
                style: TextStyle(
                    color: Color(0xff18172B),
                    fontSize: 25.0,
                    fontFamily: 'JosefinSans-Medium'),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              child: Wrap(
                children: <Widget>[
                  Text(
                    'Healthy eating means eating a variety of foods that give you the nutrients you need to maintain your health, feel good, and have energy.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xff6E80B0), fontSize: 16.0),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 15,
                    height: 15,
                    margin: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.5),
                        color: Color(0xff6D61F2)),
                  ),
                  Container(
                    width: 15,
                    height: 15,
                    margin: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.5),
                        color: Color(0xffE3E6EF)),
                  ),
                  Container(
                    width: 15,
                    height: 15,
                    margin: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.5),
                        color: Color(0xffE3E6EF)),
                  )
                ],
              ),
            ),
          ],
        ),
        Positioned(
            bottom: 22.0,
            child: Container(
                padding: EdgeInsets.all(20.0),
                width: MediaQuery.of(context).size.width,
                height: 100.0,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  color: Color(0xff6D61F2),
                  onPressed: () {
                    controller.animateToPage(1,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut);
                  },
                  child: Text(
                    'Next',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                )))
      ],
    );
  }
}

class Slide2 extends StatelessWidget {
  Slide2({this.controller});

  PageController controller;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              height: 70.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                      child: Text('Skip',
                          style: TextStyle(
                              color: Color(0xff6E80B0),
                              fontFamily: 'JosefinSans-Medium')))
                ],
              ),
            ),
            Container(
              height: 70.0,
            ),
            Container(
              child: Image.asset(
                'assets/images/img2.png',
                scale: 4.2,
              ),
            ),
            Container(
              height: 70.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              child: Text(
                'Choose A Tasty Dish',
                style: TextStyle(
                    color: Color(0xff18172B),
                    fontSize: 25.0,
                    fontFamily: 'JosefinSans-Medium'),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              child: Wrap(
                children: <Widget>[
                  Text(
                    'Order anything you want from your Favorite restaurant.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xff6E80B0), fontSize: 16.0),
                  )
                ],
              ),
            ),
            Container(
              height: 35.0,
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 15,
                    height: 15,
                    margin: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.5),
                        color: Color(0xffE3E6EF)),
                  ),
                  Container(
                    width: 15,
                    height: 15,
                    margin: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.5),
                        color: Color(0xff6D61F2)),
                  ),
                  Container(
                    width: 15,
                    height: 15,
                    margin: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.5),
                        color: Color(0xffE3E6EF)),
                  )
                ],
              ),
            ),
          ],
        ),
        Positioned(
            bottom: 22.0,
            child: Container(
                padding: EdgeInsets.all(20.0),
                width: MediaQuery.of(context).size.width,
                height: 100.0,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  color: Color(0xff6D61F2),
                  onPressed: () {
                    controller.animateToPage(2,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut);
                  },
                  child: Text(
                    'Next',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                )))
      ],
    );
  }
}

class Slide3 extends StatelessWidget {
  Slide3({this.controller});

  PageController controller;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20.0),
            height: 70.0,
          ),
          Container(
            height: 70.0,
          ),
          Container(
            child: Image.asset(
              'assets/images/img3.png',
              scale: 5.0,
            ),
          ),
          Container(
            height: 70.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
            child: Text(
              'Easy Payment',
              style: TextStyle(
                  color: Color(0xff18172B),
                  fontSize: 25.0,
                  fontFamily: 'JosefinSans-Medium'),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
            child: Wrap(
              children: <Widget>[
                Text(
                  'Payment made easy through debit card, credit card  & more ways to pay for your food',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color(0xff6E80B0), fontSize: 16.0),
                )
              ],
            ),
          ),
          Container(
            height: 80.0,
          ),
        ],
      ),
      Positioned(
          bottom: 22.0,
          child: Container(
              padding: EdgeInsets.all(20.0),
              width: MediaQuery.of(context).size.width,
              height: 100.0,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                color: Color(0xff6D61F2),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                child: Text(
                  'Get Started',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              )))
    ]);
  }
}
