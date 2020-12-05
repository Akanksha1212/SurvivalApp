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
                                    child: Image.asset(
                                      'assets/fire.jpg',
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
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
                                    child: Image.asset(
                                      'assets/fire.jpg',
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
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
                                    child: Image.asset(
                                      'assets/fire.jpg',
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
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
                                    child: Image.asset(
                                      'assets/fire.jpg',
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
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
