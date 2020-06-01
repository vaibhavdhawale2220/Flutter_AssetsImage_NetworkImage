import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor:  Colors.white,
        appBar: AppBar(backgroundColor: Colors.black,
        title: Text('Image'),
        ),
        body: Column(
          children:<Widget>[
            Text('This is Assets Image',
            style:TextStyle(fontSize: 40.0),
            ),
            Container(
              child: Padding(padding: const EdgeInsets.all(20),
              child: Image(image: AssetImage('images/flower.jpg'),
              ),
              ),
            ),
            Text('This is Network Image',
            style:TextStyle(fontSize: 40.0),
            ),
            Container(
            child: Padding(padding: const EdgeInsets.all(20.0),
            child: Image.network('https://wallpaperaccess.com/full/393738.jpg'),
            ),
            ),
          ],
        ),
      ),
    );
  }
}