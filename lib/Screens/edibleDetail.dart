import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:csv/csv.dart';
import 'package:flutter/services.dart' show rootBundle;

class EdibleDetail extends StatefulWidget {
  @override
  EdibleDetailState createState() => new EdibleDetailState();
}

class EdibleDetailState extends State<EdibleDetail> {
  double screenHeight;

  final GlobalKey<ScaffoldState> scaffoldState = GlobalKey();
  var scaffoldKey = GlobalKey<ScaffoldState>();
  final List<List<dynamic>> csvTable = new List();

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    return FutureBuilder<String>(
        future: rootBundle.loadString('assets/Edible.csv'), //
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          List<List<dynamic>> csvTable =
              CsvToListConverter().convert(snapshot.data);
          return SafeArea(
            child: Scaffold(
              key: scaffoldKey,
              backgroundColor: Colors.white,
              body: Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      new Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8.0),
                        child: new ListTile(
                          leading: new Icon(Icons.search),
                          title: new TextField(
                            decoration: new InputDecoration(
                              hintText: 'Search',
                            ),
                          ),
                        ),
                      ),
                      new Expanded(
                        child: ListView.builder(
                            padding: const EdgeInsets.all(8),
                            itemCount: csvTable.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Card(
                                child: ListTile(
                                  leading:
                                      Image.network("${csvTable[index][1]}"),
                                  title: Text(
                                    '${csvTable[index][0]}',
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 25, vertical: 20),
                                  subtitle: Text(' ${csvTable[index][2]}'),
                                  isThreeLine: true,
                                ),
                                color: Colors.blue[100],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(55),
                                ),
                              );
                            }),
                      ),
                    ]),
              ),
            ),
          );
        });
  }
}
