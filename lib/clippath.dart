import 'package:flutter/material.dart';
// import 'package:path/path.dart';
// import 'nurse.dart';
import 'list.dart';


class WavyHeaderImage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WavyHeaderImageState();
  }
}

class WavyHeaderImageState extends State<WavyHeaderImage> {
  List<String> images = [
    'nurse.png',
    'hospital.png',
  ];

  List<String> image = [
    'medicine.png',
    'doctor.png',
  ];
  List<String> texts = ['nurses', 'hospitals'];
  String filename;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            ClipPath(
              child: Container(
                color: Colors.blue,
                height: 300.0,
                width: MediaQuery.of(context).size.width,
              ),
              clipper: BottomWaveClipper(),
            ),
            Positioned(
              left: 20.0,
              top: 55.0,
              child: Icon(Icons.menu, color: Colors.white),
              height: MediaQuery.of(context).size.width * 0.15,
            ),
            Positioned(
              left: 70.0,
              top: 60.0,
              height: MediaQuery.of(context).size.width * 0.15,
              width: MediaQuery.of(context).size.width * 0.75,
              child: Container(padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    color: Colors.white),
                child: ListTile(
                  trailing: Icon(Icons.search, color: Colors.blue),
                  title: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search here', border: InputBorder.none),
                  ),
                ),
              ),
            ),
            Positioned(
                left: 30.0,
                top: 150.0,
                width: 150,
                height: 150,
                child: InkWell(onTap: (){ Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp1()),
                );},
                    child: Card(
                  elevation: 20.0,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset("images/nurse.png",
                          height: 100.0, width: 100.0),
                      Text(
                        'Nurses',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ],
                  ),
                ))),
            Positioned(
                left: 210.0,
                top: 150.0,
                width: 150.0,
                height: 150.0,
                child: Container(
                  child: Card(
                    elevation: 20.0,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          "images/hospital.png",
                          height: 100.0,
                          width: 100.0,
                        ),
                        Text(
                          'Hospitals',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ],
                    ),
                  ),
                )),
          ],
        ),
        // SizedBox(
        //   height: 30.0,
        // ),
        Row(
          children: <Widget>[
            Container(
              
              height: 230.0,
              width: 210.0,
              padding: EdgeInsets.all(30.0),
              child: Card(
                elevation: 20.0,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      "images/medicine.png",
                      height: 100.0,
                      width: 100.0,
                    ),
                    Text(
                      'Medical Store',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 170.0,
              width: 150.0,
              child: Card(
                elevation: 20.0,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      "images/doctor.png",
                      height: 100.0,
                      width: 100.0,
                    ),
                    Text(
                      'Doctor',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 100);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 100);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
