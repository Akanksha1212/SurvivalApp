import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: Image(
              image: NetworkImage(
                  'https://static.scientificamerican.com/sciam/cache/file/7F5C87CE-C719-4650-B4E8AEF44415E806_source.jpg'),
            ),
          )
        ],
      ),
    );
  }
}
