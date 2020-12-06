import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttny/Screens/edible.dart';
import 'package:ttny/Screens/medicine.dart';
import 'package:ttny/Screens/navigation.dart';
import 'package:ttny/Screens/shelter.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  double screenHeight;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          elevation: 2,
          backgroundColor: Color(0xff395b44),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                icon: new Image.asset('assets/menu.png'),
              );
            },
          ),
        ),
        drawer: NavDrawer(),
        body: SafeArea(
          child: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://i.pinimg.com/564x/4f/b2/d3/4fb2d3adc0431e8577c5fa8d4de01bb4.jpg'),
                    //https://i.pinimg.com/564x/b8/18/78/b81878512459d238cc8351cb729353e5.jpg
                    fit: BoxFit.cover)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      GestureDetector(
                        child: Card(
                          elevation: 18.0,
                          child: ListTile(
                            leading: Image.asset("assets/vegetarian.png"),
                            title: Text(
                              'Food',
                              style: GoogleFonts.abel(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 10),
                          ),
                          color: Color(0xffceca86),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(55),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Edible(),
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        child: Card(
                          elevation: 18.0,
                          child: ListTile(
                            leading: Image.asset("assets/teepee.png"),
                            title: Text(
                              'Shelter',
                              style: GoogleFonts.abel(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 10),
                          ),
                          color: Color(0xffceca86),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(55),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Shelter(),
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        child: Card(
                          elevation: 18.0,
                          child: ListTile(
                            leading: Image.asset("assets/location.png"),
                            title: Text(
                              'Navigation',
                              style: GoogleFonts.abel(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 10),
                          ),
                          color: Color(0xffceca86),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(55),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Navigation(),
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        child: Card(
                          elevation: 18.0,
                          child: ListTile(
                            leading: Image.asset("assets/healthcare.png"),
                            title: Text(
                              'Medical',
                              style: GoogleFonts.abel(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 10),
                          ),
                          color: Color(0xffceca86),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(55),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Medicine(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new SizedBox(
      width: MediaQuery.of(context).size.width / 1.7, //20.0,
      child: Drawer(
        child: Container(
          color: Color(0xffaecccf),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text(
                  'Survival',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                decoration: BoxDecoration(
                    color: Color(0xffceca86),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                            'assets/people.png'))), // make changes here to change background image in header of sdebar
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.input),
                    title: Text('Welcome'),
                    onTap: () => {},
                  ),
                  ListTile(
                    leading: Icon(Icons.border_color),
                    title: Text('Feedback'),
                    onTap: () => {Navigator.of(context).pop()},
                  ),
                  ListTile(
                    leading: Icon(Icons.info),
                    title: Text('About'),
                    onTap: () => {Navigator.of(context).pop()},
                  ),
                  ListTile(
                    leading: Icon(Icons.exit_to_app),
                    title: Text('Logout'),
                    onTap: () => {Navigator.of(context).pop()},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
