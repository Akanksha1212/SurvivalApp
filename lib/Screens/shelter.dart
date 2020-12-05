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
              //margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  GestureDetector(
                      child: Container(
                        height: 250,
                        width: 400,
                        child: Card(
                          child: Image.asset(
                            'assets/location.png',
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
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
