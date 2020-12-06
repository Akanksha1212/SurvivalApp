import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Medicine extends StatefulWidget {
  @override
  MedicineState createState() => new MedicineState();
}

class MedicineState extends State<Medicine> {
  double screenHeight;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Medicine'),
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
                                                    'assets/cpr.webp'),
                                                //
                                                fit: BoxFit.cover)),
                                        child: Column(
                                          children: [
                                            Text(
                                              "How to do CPR on child",
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
                                                child: Column(
                                                  children: [
                                                    Text(''),
                                                    new Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 20.0)),
                                                    Image(
                                                      image: NetworkImage(
                                                          'https://i.pinimg.com/originals/d9/52/47/d95247506f1e90c2c95757572b13b70e.jpg'),
                                                    )
                                                  ],
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
                                                    'assets/aed.jpg'),
                                                //
                                                fit: BoxFit.cover)),
                                        child: Column(
                                          children: [
                                            Text(
                                              "How to Use AED's",
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
                                                child: Column(
                                                  children: [
                                                    Text(''),
                                                    new Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 20.0)),
                                                    Image(
                                                      image: NetworkImage(
                                                          'https://i.pinimg.com/originals/d9/52/47/d95247506f1e90c2c95757572b13b70e.jpg'),
                                                    )
                                                  ],
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
                                                    'assets/first_aid.jpg'),
                                                //
                                                fit: BoxFit.cover)),
                                        child: Column(
                                          children: [
                                            Text(
                                              "What to keep in your first-aid kit",
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
                                                      Text(''),
                                                      new Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 20.0)),
                                                      Image(
                                                        image: NetworkImage(
                                                            'https://i.pinimg.com/originals/d9/52/47/d95247506f1e90c2c95757572b13b70e.jpg'),
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
