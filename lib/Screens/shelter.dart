import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Shelter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('Home'),
        //   backgroundColor: Color(0xff395b44),
        // ),
        body: SafeArea(
      child: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/for.png'), fit: BoxFit.cover)),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  // Card(
                  //   child: ListTile(
                  //     title: TextField(
                  //       decoration: InputDecoration(
                  //           hintText: 'Search',
                  //           // errorText: 'Can\'t be blank',
                  //           border: OutlineInputBorder()),
                  //     ),
                  //     contentPadding:
                  //         EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  //     // subtitle: Text(''),
                  //     // isThreeLine: true,
                  //   ),
                  // ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    child: Card(
                      elevation: 5.0,
                      child: ListTile(
                        //leading: Image.asset("assets/vegetarian.png"),
                        title: Text(
                          'Wild Shelters',
                          style: GoogleFonts.abel(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                      ),
                      color: Color(0xffceca86),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => Scan(),
                      //   ),
                      // );
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 70,
                    width: 170,
                    child: RaisedButton.icon(
                      elevation: 15,
                      onPressed: null,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      label: Text(
                        'Identify',
                        style: GoogleFonts.abel(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      icon: Image(
                        image: AssetImage('assets/scan.png'),
                        height: 50,
                        width: 50,
                      ),
                      textColor: Colors.white,
                      splashColor: Colors.red,
                      color: Colors.green[300],
                    ),
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
