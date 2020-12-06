import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Shelter extends StatefulWidget {
  @override
  ShelterState createState() => new ShelterState();
}

class ShelterState extends State<Shelter> {
  double screenHeight;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Shelter'),
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
                                                    'assets/fire.jpg'),
                                                //
                                                fit: BoxFit.cover)),
                                        child: Column(
                                          children: [
                                            Text(
                                              "How to Make a Fire",
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
                                                      Text(
                                                          'Probably the “easiest” way (without matches/lighter/flame thrower) is the use of friction. One of the most famous ways to start a fire without a match is also one of the most difficult: using friction. To use this method, make a v-shaped notch in a board or log, and choose a spindle that will create the friction. Rub the spindle between your hands as fast as you can, moving your hands up and down the spindle rapidly. When the board or log begins to smoke, use your tinder nest to catch the glowing spark you\'ve produced.'),
                                                      new Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 20.0)),
                                                      Image(
                                                        image: NetworkImage(
                                                            'https://img.wonderhowto.com/img/31/21/63462005808507/0/start-fire-with-water.w1456.jpg'),
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
                                                    'assets/shelter.jpg'),
                                                //
                                                fit: BoxFit.cover)),
                                        child: Column(
                                          children: [
                                            Text(
                                              "How to Make a Shelter",
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
                                                    'assets/wild.jpg'),
                                                //
                                                fit: BoxFit.cover)),
                                        child: Column(
                                          children: [
                                            Text(
                                              "How To escape from Wild Animals",
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
                                                    'assets/food.jpg'),
                                                //
                                                fit: BoxFit.cover)),
                                        child: Column(
                                          children: [
                                            Text(
                                              "How to eat Food in the Wild",
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
