import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';
import 'package:ttny/Screens/edibleDetail.dart';
import 'package:ttny/Screens/tensorflow.dart';

class Edible extends StatelessWidget {
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
                image: NetworkImage(
                    'https://i.pinimg.com/564x/b8/18/78/b81878512459d238cc8351cb729353e5.jpg'),
                //
                fit: BoxFit.cover)),
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
                          'Wild Edibles',
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EdibleDetail(),
                        ),
                      );
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Tensorflow(),
                          ),
                        );
                      },
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

class Identify extends StatefulWidget {
  @override
  _IdentifyState createState() => _IdentifyState();
}

class _IdentifyState extends State<Identify> {
  List _outputs;
  File _image;
  bool _loading = false;

  @override
  void initState() {
    super.initState();
    _loading = true;

    loadModel().then((value) {
      setState(() {
        _loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _loading
          ? Container(
              alignment: Alignment.center,
              child: CircularProgressIndicator(),
            )
          : Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _image == null ? Container() : Image.file(_image),
                  SizedBox(
                    height: 20,
                  ),
                  _outputs != null
                      ? Text(
                          "${_outputs[0]["label"]}",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            background: Paint()..color = Colors.white,
                          ),
                        )
                      : Container()
                ],
              ),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: pickImage,
        child: Icon(Icons.image),
      ),
    );
  }

  pickImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    if (image == null) return null;
    setState(() {
      _loading = true;
      _image = image;
    });
    classifyImage(image);
  }

  classifyImage(File image) async {
    var output = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 2,
      threshold: 0.5,
      imageMean: 127.5,
      imageStd: 127.5,
    );
    setState(() {
      _loading = false;
      _outputs = output;
    });
  }

  loadModel() async {
    await Tflite.loadModel(
      model: "assets/model_unquant.tflite",
      labels: "assets/labels.txt",
    );
  }

  @override
  void dispose() {
    Tflite.close();
    super.dispose();
  }
}
