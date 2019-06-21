import 'basic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_range_slider/flutter_range_slider.dart';

class MyApp1 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:
          new ThemeData(backgroundColor: Colors.white, fontFamily: 'Raleway'),
      home: new ListPage(title: 'Lessons'),
      // home: DetailPage(),
    );
  }
}

class ListPage extends StatefulWidget {
  ListPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List lessons;
  double _lowerValue = 200.0;
  double _upperValue = 400.0;
  double _lowerAge = 2.0;
  double _upperAge = 7.0;

  @override
  void initState() {
    lessons = getLessons();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget makeListTile(Basic lesson) => Column(children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                  flex: 2,
                  child: Container(
                    height: 150.0,
                    width: 250.0,
                    decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(lesson.image),
                    )),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 10.0,
                          bottom: 10.0,
                          child: Image.asset(
                            "images/play-button.png",
                            width: 40.0,
                            height: 40.0,
                          ),
                        ),
                      ],
                    ),
                  )),
              Expanded(
                flex: 3,
                child: Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 14.0),
                              child: Container(
                                // alignment: Alignment.bottomCenter,
                                width: 10.0,
                                height: 10.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 14.0),
                              child: Text(
                                lesson.name,
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                                padding: new EdgeInsets.only(
                                    top: 2.0, right: 2.0, bottom: 5.0),
                                child: Image.asset(
                                  'images/badge.png',
                                  height: 30.0,
                                )),
                          ],
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          children: <Widget>[
                            Image.asset(
                              'images/rupee.png',
                              height: 12.0,
                            ),
                            Text(
                              lesson.startPrice.toString() + '-',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Image.asset(
                              'images/rupee.png',
                              height: 12.0,
                            ),
                            Text(
                              lesson.endPrice.toString(),
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(' per visit',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                            ),
                            Text(
                              ' [5.0] 13 reviews',
                              style: TextStyle(
                                fontSize: 10.0,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              color: Colors.grey,
                              size: 15.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                lesson.distance.toString() + " km away ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                            Image.asset(
                              'images/arrow-spark.png',
                              height: 10.0,
                            ),
                            Text(
                              lesson.experence.toString() + "yrs exp.",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 12.0),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Row(
                          children: <Widget>[
                            Image.asset('images/doctor-bag.png', height: 10.0),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                'Worked with ' +
                                    lesson.doctor.toString() +
                                    ' doctor',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12.0),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.school,
                              color: Colors.grey,
                              size: 15.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                lesson.specialization,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    )),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: FlatButton(
                  child: ListTile(
                    leading: Image.asset(
                      "images/call.png",
                      height: 30.0,
                    ),
                    trailing: Text('Hire Me'),
                  ),
                  onPressed: () {},
                  color: Colors.teal[50],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: FlatButton(
                    child: Text('View Profile'),
                    onPressed: () {},
                    color: Colors.grey[400],
                  ),
                  height: 57.0,
                ),
              )
            ],
          )
        ]);

    Card makeCard(Basic lesson) => Card(
          elevation: 8.0,
          margin: new EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Container(
            decoration: BoxDecoration(color: Colors.white),
            child: makeListTile(lesson),
          ),
        );

    final makeBody = Container(
      // decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, 1.0)),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: lessons.length,
        itemBuilder: (BuildContext context, int index) {
          return makeCard(lessons[index]);
        },
      ),
    );
    final topAppBar = AppBar(
      elevation: 0.1,
      backgroundColor: Colors.grey[100],
      title: Text(
        'Find suitable nurse here',
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      actions: <Widget>[
        IconButton(
          icon: Image.asset('images/filter.png', height: 30.0),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                // return object of type Dialog
                return Stack(children: <Widget>[
                  AlertDialog(
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Flexible(
                              child: FlatButton(
                                child: Text(
                                  'Reset',
                                  style: TextStyle(fontSize: 10.0),
                                ),
                                onPressed: () {},
                              ),
                            ),
                            Flexible(
                              child: FlatButton(
                                child: Text(
                                  'Filter by',
                                  style: TextStyle(fontSize: 10.0),
                                ),
                                onPressed: () {},
                              ),
                            ),
                            Flexible(
                              child: FlatButton(
                                child: Text(
                                  'Apply',
                                  style: TextStyle(
                                      fontSize: 10.0, color: Colors.blue),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Price Range',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontSize: 10.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10.0),
                        RangeSlider(
                          min: 0.0,
                          max: 1000.0,
                          lowerValue: _lowerValue,
                          upperValue: _upperValue,
                          divisions: 5,
                          showValueIndicator: true,
                          valueIndicatorMaxDecimals: 1,
                          onChanged:
                              (double newLowerValue, double newUpperValue) {
                            setState(() {
                              _lowerValue = newLowerValue;
                              _upperValue = newUpperValue;
                            });
                          },
                        ),
                        Text(
                          'Nurse Type',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 10.0),
                        ),
                        SizedBox(height: 10.0),
                        Row(children: <Widget>[
                          Checkbox(
                            value: true,
                            checkColor: Colors.grey[400],
                            activeColor: Colors.grey[200],
                            onChanged: (value) {
                              setState(() {});
                            },
                          ),
                          Text('Certified'),
                        ]),
                        SizedBox(
                          height: 10.0,
                        ),
                        SizedBox(height: 10.0),
                        Text('Specialisation',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold)),
                                SizedBox(height:10.0),
                        Row(children: <Widget>[
                          Flexible(
                            child: Row(children: <Widget>[
                              Checkbox(
                                  value: true,
                                  activeColor: Colors.grey,
                                  onChanged: (value) {
                                    setState(() {});
                                  }),
                              Text(
                                'Text1',
                                style: TextStyle(fontSize: 10.0),
                              ),
                            ]),
                          ),
                          Flexible(child:
                          Row(children: <Widget>[
                            Checkbox(
                                value: true,
                                activeColor: Colors.grey,
                                onChanged: (value) {
                                  setState(() {});
                                }),
                            Text(
                              'Text2',
                              style: TextStyle(fontSize: 10.0),
                            ),
                          ]),
                          ),
                          Flexible(child:
                          Row(children: <Widget>[
                            Checkbox(
                                value: true,
                                activeColor: Colors.grey,
                                onChanged: (value) {
                                  setState(() {});
                                }),
                            Text(
                              'Text3',
                              style: TextStyle(fontSize: 10.0),
                            ),
                          ]),
                          ),
                        ]),
                        
                        Row(children: <Widget>[
                          Flexible(
                            child: Row(children: <Widget>[
                              Checkbox(
                                  value: true,
                                  activeColor: Colors.grey,
                                  onChanged: (value) {
                                    setState(() {});
                                  }),
                              Text(
                                'Text1',
                                style: TextStyle(fontSize: 10.0),
                              ),
                            ]),
                          ),
                          Flexible(child:
                          Row(children: <Widget>[
                            Checkbox(
                                value: true,
                                activeColor: Colors.grey,
                                onChanged: (value) {
                                  setState(() {});
                                }),
                            Text(
                              'Text2',
                              style: TextStyle(fontSize: 10.0),
                            ),
                          ]),
                          ),
                          Flexible(child:
                          Row(children: <Widget>[
                            Checkbox(
                                value: true,
                                activeColor: Colors.grey,
                                onChanged: (value) {
                                  setState(() {});
                                }),
                            Text(
                              'Text3',
                              style: TextStyle(fontSize: 10.0),
                            ),
                          ]),
                          ),
                        ]),
                        SizedBox(height: 10.0,),
                        Text('Star Rating',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold)),
                        
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Container(width: 60.0,
                              child: RaisedButton(
                                color: Colors.white,
                                child: Text(
                                  '3 star',
                                  style: TextStyle(
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                onPressed: () {},
                              ),
                            ),
                            Container(width: 60.0,
                              child: RaisedButton(
                                color: Colors.white,
                                child: Text(
                                  '4 star',
                                  style: TextStyle(
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                onPressed: () {},
                              ),
                            ),
                            Container(width: 60.0,
                              child: RaisedButton(
                                color: Colors.white,
                                child: Text(
                                  '5 star',
                                  style: TextStyle(
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                onPressed: () {},
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10.0,),
                        Text('Experience',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  fontSize: 10.0, fontWeight: FontWeight.bold)),
                        
                        RangeSlider(
                          min: 0.0,
                          max: 10.0,
                          lowerValue: _lowerAge,
                          upperValue: _upperAge,
                          divisions: 5,
                          showValueIndicator: true,
                          valueIndicatorMaxDecimals: 1,
                          onChanged:
                              (double newLowerValue, double newUpperValue) {
                            setState(() {
                              _lowerAge = newLowerValue;
                              _upperAge = newUpperValue;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      top: -1.0,
                      right: 3.0,
                      child: Transform.scale(
                        scale: 0.4,
                        child: FloatingActionButton(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.close, color: Colors.black),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ))
                ]);
              },
            );
          },
        )
      ],
    );
    final makeBottom = Container(
      child: BottomNavigationBar(
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

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: topAppBar,
      body: makeBody,
      bottomNavigationBar: makeBottom,
    );
  }
}

List getLessons() {
  return [
    Basic(
        name: "Perena Vasu",
        startPrice: 200,
        endPrice: 500,
        image: "images/1.png",
        distance: 1.3,
        experence: 3.5,
        specialization: "specialization1",
        doctor: 13),
    Basic(
        name: "Bhumi Jain",
        startPrice: 200,
        endPrice: 500,
        image: "images/2.png",
        distance: 1.3,
        experence: 3.5,
        specialization: "specialization1",
        doctor: 13),
    Basic(
        name: "Anamika Khanna",
        startPrice: 200,
        endPrice: 500,
        image: "images/3.png",
        distance: 1.3,
        experence: 3.5,
        specialization: "specialization1",
        doctor: 13),
    Basic(
        name: "Anjali Tiwari",
        startPrice: 200,
        endPrice: 500,
        image: "images/4.png",
        distance: 1.3,
        experence: 3.5,
        specialization: "specialization1",
        doctor: 13),
    Basic(
        name: "Sonika Goyal",
        startPrice: 200,
        endPrice: 500,
        image: "images/4.png",
        distance: 1.3,
        experence: 3.5,
        specialization: "specialization1",
        doctor: 13),
    Basic(
        name: "Jyoti Sharma",
        startPrice: 200,
        endPrice: 500,
        image: "images/1.png",
        distance: 1.3,
        experence: 3.5,
        specialization: "specialization1",
        doctor: 13),
    Basic(
        name: "Shivani Kalra",
        startPrice: 200,
        endPrice: 500,
        image: "images/1.png",
        distance: 1.3,
        experence: 3.5,
        specialization: "specialization1",
        doctor: 13),
  ];
}
