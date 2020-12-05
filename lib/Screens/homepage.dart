import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttny/Screens/edible.dart';
import 'package:ttny/Screens/navigation.dart';
import 'package:ttny/Screens/shelter.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
          title: Text('Home'),
           backgroundColor: Color(0xff395b44),
        ),
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
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 10),
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
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 10),
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
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 10),
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
                        leading: Image.asset("assets/vegetarian.png"),
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
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 10),
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
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
