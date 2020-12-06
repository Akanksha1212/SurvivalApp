import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Navigation extends StatefulWidget {
  @override
  NavigationState createState() => new NavigationState();
}

class NavigationState extends State<Navigation> {
  double screenHeight;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Navigation'),
            backgroundColor: Color(0xff395b44),
          ),
          key: scaffoldKey,
          backgroundColor: Color(0xff9ad7e9),
          body: Container(
            child: new SingleChildScrollView(
              child: new ConstrainedBox(
                constraints: new BoxConstraints(),
                child: new Container(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        //margin: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            GestureDetector(
                                child: Container(
                                  height: 250,
                                  width: 400,
                                  child: Card(
                                    child: Container(
                                        constraints: BoxConstraints.expand(),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/stars.jpg'),
                                                //
                                                fit: BoxFit.cover)),
                                        child: Column(
                                          children: [
                                            Text(
                                              "How to Navigate from the Stars",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 36),
                                            )
                                          ],
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                        )),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    elevation: 5,
                                    margin: EdgeInsets.all(10),
                                  ),
                                ),
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return new SingleChildScrollView(
                                        child: new ConstrainedBox(
                                          constraints: new BoxConstraints(),
                                          child: new Container(
                                            child: new Center(
                                              child: Dialog(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0)),
                                                child: Container(
                                                  padding: EdgeInsets.all(20),
                                                  margin: EdgeInsets.all(20),
                                                  child: Column(
                                                    children: [
                                                      new Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 20.0)),
                                                      Text(
                                                          'The easiest method for finding the North Star is by finding the ‘Plough’, an easy to identify group of seven stars. It is known as the ‘Big Dipper’ to the Americans and the ‘saucepan’ to many others. Next you find the ‘pointer’ stars, these are the two stars that a liquid would run off if you tipped up your ‘saucepan’. The North Star will always be five times the distance between these two pointers in the direction that they point (up away from the pan). True north lies directly under this star.'),
                                                      new Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 20.0)),
                                                      Image(
                                                        image: NetworkImage(
                                                            'https://www.naturalnavigator.com/wp-content/uploads/2018/10/star_final.gif'),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                }),
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                                child: Container(
                                  height: 250,
                                  width: 400,
                                  child: Card(
                                    child: Container(
                                        constraints: BoxConstraints.expand(),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/stream.jpg'),
                                                //
                                                fit: BoxFit.cover)),
                                        child: Column(
                                          children: [
                                            Text(
                                              "How to Find Water",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 36),
                                            )
                                          ],
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                        )),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    elevation: 5,
                                    margin: EdgeInsets.all(10),
                                  ),
                                ),
                                onTap: () {
                                  null;
                                }),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
}

class AssestImage {}
