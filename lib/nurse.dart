import 'package:flutter/material.dart';
import 'package:folding_cell/folding_cell.dart';

class Nurse extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListofNurse();
  }
}

class ListofNurse extends State<Nurse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Find Suitable Nurse Here",
            style: TextStyle(
              color: Colors.black87,
            ),
          ),
        ),
        body: Container(
            margin: EdgeInsets.all(20.0),
            // height: 200,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Container(
                  child: SimpleFoldingCell(
                    frontWidget: frontWidget(),
                    innerTopWidget: innerTopWidget(),
                    innerBottomWidget: innerBottomWidget(),
                    cellSize: Size(MediaQuery.of(context).size.width, 200),
                    padding: EdgeInsets.all(5.0),
                  ),
                ),
                Container(
                  child: SimpleFoldingCell(
                    frontWidget: frontWidget1(),
                    innerTopWidget: innerTopWidget(),
                    innerBottomWidget: innerBottomWidget(),
                    cellSize: Size(MediaQuery.of(context).size.width, 200),
                    padding: EdgeInsets.all(5.0),
                  ),
                ),
                Container(
                  child: SimpleFoldingCell(
                    frontWidget: frontWidget2(),
                    innerTopWidget: innerTopWidget(),
                    innerBottomWidget: innerBottomWidget(),
                    cellSize: Size(MediaQuery.of(context).size.width, 200),
                    padding: EdgeInsets.all(5.0),
                  ),
                ),
                Container(
                  child: SimpleFoldingCell(
                    frontWidget: frontWidget3(),
                    innerTopWidget: innerTopWidget(),
                    innerBottomWidget: innerBottomWidget(),
                    cellSize: Size(MediaQuery.of(context).size.width, 200),
                    padding: EdgeInsets.all(5.0),
                  ),
                ),
                Container(
                  child: SimpleFoldingCell(
                    frontWidget: frontWidget4(),
                    innerTopWidget: innerTopWidget(),
                    innerBottomWidget: innerBottomWidget(),
                    cellSize: Size(MediaQuery.of(context).size.width, 200),
                    padding: EdgeInsets.all(5.0),
                  ),
                ),
              ],
            )));
  }
}

Container innerTopWidget() {
  return Container(
    color: Colors.blue,
  );
}

Container innerBottomWidget() {
  return Container(
    color: Colors.white,
  );
}

Container frontWidget() {
  return Container(
    alignment: Alignment.center,
    child: Row(children: <Widget>[
      Expanded(
        flex: 1,
        child: Container(
          width: 250.0,
          height: 250.0,
          decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(15.0),
              image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              'images/1.png',
            ),
          )),
        ),
      ),
      Expanded(
          flex: 2,
          child: Container(
            child: Text(""),
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(15.0),
              color: Colors.white,
            ),
          ))
    ]),
  );
}

Container frontWidget1() {
  return Container(
    color: Colors.white,
    alignment: Alignment.center,
    child: Row(children: <Widget>[
      Expanded(
        flex: 1,
        child: Container(
          width: 250.0,
          height: 350.0,
          decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(15.0),
              image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('images/5.png'),
          )),
        ),
      ),
      Expanded(
          flex: 2,
          child: Container(
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(15.0),
              color: Colors.white,
            ),
          ))
    ]),
  );
}

Container frontWidget2() {
  return Container(
    color: Colors.white,
    alignment: Alignment.center,
    child: Row(children: <Widget>[
      Expanded(
        flex: 1,
        child: Container(
          width: 250.0,
          height: 350.0,
          decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(15.0),
              image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('images/3.png'),
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
        ),
      ),
      Expanded(
          flex: 2,
          child: Container(
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(15.0),
              color: Colors.white,
            ),
            child: ListView(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      child: Row(children: <Widget>[
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      width: 10.0,
                      height: 10.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                    ),
                    Container(
                        child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "Prerna Vasu",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 26.0,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                    Container(
                      child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Image.asset(
                            "images/badge.png",
                            color: Colors.blue,
                            height: 33.0,
                            width: 33.0,
                          )),
                    ),
                  ])),
                 
                  Container(
                      child: Padding(
                    padding: const EdgeInsets.only(
                        left: 25.0, top: 5.0, bottom: 5.0),
                    child: Text(
                      "Rs.200 - Rs.500 per visit",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
                  Container(
                      padding:
                          EdgeInsets.only(left: 25.0, top: 5.0, bottom: 5.0),
                      child: Row(children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Colors.yellow[900],
                          size: 23.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[900],
                          size: 23.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[900],
                          size: 23.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[900],
                          size: 23.0,
                        ),
                        Container(
                            child: Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Text("[5.0] 13 reviews ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.bold)),
                        )),
                      ])),
                  Container(
                    child: Expanded(
                      child: Row(
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.only(left: 25.0),
                              child: Icon(
                                Icons.location_on,
                                color: Colors.grey,
                                size: 23.0,
                              )),
                          Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Expanded(
                              child: Text("1.3 km away ",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Image.asset(
                              "images/arrow-spark.png",
                              color: Colors.grey,
                              height: 23.0,
                              width: 23.0,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(3.0),
                            child: Expanded(
                              child: Text("3.5  yr. exp.",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                      child: Row(children: <Widget>[
                    Container(
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: 25.0, top: 5.0, bottom: 5.0),
                          child: Image.asset(
                            "images/doctor-bag.png",
                            color: Colors.grey,
                            height: 23.0,
                            width: 23.0,
                          )),
                    ),
                    Container(
                        child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text("Worked with 13 doctors ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold)),
                    )),
                  ])),
                  Container(
                      child: Row(children: <Widget>[
                    Container(
                      child: Padding(
                          padding: EdgeInsets.only(left: 25.0),
                          child: Icon(
                            Icons.school,
                            color: Colors.grey,
                            size: 23.0,
                          )),
                    ),
                    Container(
                        child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text("Specialisation  1",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold)),
                    )),
                  ])),
                ]),
          ))
    ]),
  );
}

Container frontWidget3() {
  return Container(
      color: Colors.white,
      alignment: Alignment.center,
      child: Row(children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            width: 220.0,
            height: 350.0,
            decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('images/4.png'),
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
          ),
        ),
        Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
              ),
              child: ListView(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        child: Row(children: <Widget>[
                      SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        width: 10.0,
                        height: 10.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                        ),
                      ),
                      Container(
                          child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          "Bhumi jain",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                      Container(
                        child: Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Image.asset(
                              "images/badge.png",
                              color: Colors.blue,
                              height: 33.0,
                              width: 33.0,
                            )),
                      ),
                    ])),
                    Container(
                        child: Padding(
                      padding: const EdgeInsets.only(
                          left: 25.0, top: 5.0, bottom: 5.0),
                      child: Text(
                        "Rs.200 - Rs.500 per visit",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                    Container(
                        padding:
                            EdgeInsets.only(left: 25.0, top: 5.0, bottom: 5.0),
                        child: Row(children: <Widget>[
                          Icon(
                            Icons.star,
                            color: Colors.yellow[900],
                            size: 23.0,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow[900],
                            size: 23.0,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow[900],
                            size: 23.0,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow[900],
                            size: 23.0,
                          ),
                          Container(
                              child: Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Text("[5.0] 13 reviews ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.bold)),
                          )),
                        ])),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.only(left: 25.0),
                              child: Icon(
                                Icons.location_on,
                                color: Colors.grey,
                                size: 23.0,
                              )),
                          Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Text("1.3 km away ",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Image.asset(
                              "images/arrow-spark.png",
                              color: Colors.grey,
                              height: 23.0,
                              width: 23.0,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(3.0),
                            child: Text("3.5  yr. exp.",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        child: Row(children: <Widget>[
                      Container(
                        child: Padding(
                            padding: EdgeInsets.only(
                                left: 25.0, top: 5.0, bottom: 5.0),
                            child: Image.asset(
                              "images/doctor-bag.png",
                              color: Colors.grey,
                              height: 23.0,
                              width: 23.0,
                            )),
                      ),
                      Container(
                          child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text("Worked with 13 doctors ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13.0,
                                fontWeight: FontWeight.bold)),
                      )),
                    ])),
                    Container(
                        child: Row(children: <Widget>[
                      Container(
                        child: Padding(
                            padding: EdgeInsets.only(left: 25.0),
                            child: Icon(
                              Icons.school,
                              color: Colors.grey,
                              size: 23.0,
                            )),
                      ),
                      Container(
                          child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text("Specialisation  1",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13.0,
                                fontWeight: FontWeight.bold)),
                      )),
                    ])),
                  ]),
            ))
      ]));
}

Container frontWidget4() {
  return Container(
    color: Colors.white,
    alignment: Alignment.center,
    child: Row(children: <Widget>[
      Expanded(
        flex: 1,
        child: Container(
          width: 250.0,
          height: 250.0,
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(15.0),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('images/2.png'),
            ),
          ),
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
        ),
      ),
      Expanded(
          flex: 2,
          child: Container(
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(15.0),
              color: Colors.white,
            ),
            child: ListView(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      child: Row(children: <Widget>[
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      width: 10.0,
                      height: 10.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                    ),
                    Container(
                        child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "Anjali tiwari",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 26.0,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                    Container(
                      child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Image.asset(
                            "images/badge.png",
                            color: Colors.blue,
                            height: 33.0,
                            width: 33.0,
                          )),
                    ),
                  ])),
                  Container(
                      child: Padding(
                    padding: const EdgeInsets.only(
                        left: 25.0, top: 5.0, bottom: 5.0),
                    child: Text(
                      "Rs.200 - Rs.500 per visit",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
                  Container(
                      padding:
                          EdgeInsets.only(left: 25.0, top: 5.0, bottom: 5.0),
                      child: Row(children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Colors.yellow[900],
                          size: 23.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[900],
                          size: 23.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[900],
                          size: 23.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[900],
                          size: 23.0,
                        ),
                        Container(
                            child: Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Text("[5.0] 13 reviews ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.bold)),
                        )),
                      ])),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(left: 25.0),
                            child: Icon(
                              Icons.location_on,
                              color: Colors.grey,
                              size: 23.0,
                            )),
                        Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Text("1.3 km away ",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Image.asset(
                            "images/arrow-spark.png",
                            color: Colors.grey,
                            height: 23.0,
                            width: 23.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(3.0),
                          child: Text("3.5  yr. exp.",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      child: Row(children: <Widget>[
                    Container(
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: 25.0, top: 5.0, bottom: 5.0),
                          child: Image.asset(
                            "images/doctor-bag.png",
                            color: Colors.grey,
                            height: 23.0,
                            width: 23.0,
                          )),
                    ),
                    Container(
                        child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text("Worked with 13 doctors ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold)),
                    )),
                  ])),
                  Container(
                      child: Row(children: <Widget>[
                    Container(
                      child: Padding(
                          padding: EdgeInsets.only(left: 25.0),
                          child: Icon(
                            Icons.school,
                            color: Colors.grey,
                            size: 23.0,
                          )),
                    ),
                    Container(
                        child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text("Specialisation  1",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold)),
                    )),
                  ])),
                ]),
          ))
    ]),
  );
}
