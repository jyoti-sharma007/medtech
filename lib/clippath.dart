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
              left: 30.0,
              top: 80.0,
              child: Image.asset("images/hamburger.png",
                  height: MediaQuery.of(context).size.width * 0.05),
            ),
            Positioned(
              left: 70.0,
              top: 60.0,
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.75,
              child: Container(
                padding: EdgeInsets.only(bottom:06.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    color: Colors.white),
                child: ListTile(
                  
                  trailing: Icon(Icons.search, color: Colors.blue,size: 20.0,),
                  
                  title: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search here', border: InputBorder.none),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 150.0, left: 30.0, right: 30.0, bottom: 30.0),
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.40,
                  height: MediaQuery.of(context).size.height * 0.28,
                  child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyApp1()),
                        );
                      },
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
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 150.0, left: 190.0, right: 30.0, bottom: 30.0),
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.55,
                  height: MediaQuery.of(context).size.height * 0.28,
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
            ),
            Padding(
                padding:
                    const EdgeInsets.only(top: 340.0, left: 190.0, right: 30.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.55,
                  height: MediaQuery.of(context).size.height * 0.28,
                  child: Container(
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
                          ]),
                    ),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 340.0, left: 30, right: 20.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.40,
                height: MediaQuery.of(context).size.height * 0.28,
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
              ),
            )
          ],
        ),
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
