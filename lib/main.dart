import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'clippath.dart';
import 'list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wavy image mask',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WavyHeaderImage(),
      floatingActionButton: Container(
        height: 80.0,
        width: 80.0,
        child: FittedBox(
          child: FloatingActionButton(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(Icons.home, color: Colors.white),
                  Text(
                    "Home",
                    style: TextStyle(
                        fontSize: 8.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp1()),
                );
              }),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'images/start.png',
              height: 30.0,
            ),
            title: new Text('Favorites'),
          ),
          BottomNavigationBarItem(
              icon: Image.asset('images/reports.png', height: 30.0),
              title: new Text('Reports')),
          BottomNavigationBarItem(
              icon: Image.asset('images/patients.png', height: 30.0),
              title: new Text('Patients')),
        ],
      ),
    );
  }
}
