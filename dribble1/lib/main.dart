import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      backgroundColor: Color(0xFFFAD900),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(left: 10.0, top: 15.0),
                child: Text(
                  'Delivery address',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey[600]),
                )),
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          'Bielawska 12',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5.0),
                          child: Icon(
                            Icons.edit,
                            color: Colors.grey[600],
                            size: 18.0,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(color: Colors.grey, blurRadius: 10.0)
                              ]),
                          child: CircleAvatar(
                            child: Icon(
                              Icons.search,
                              color: Colors.black,
                              size: 30.0,
                            ),
                            radius: 26.0,
                            backgroundColor: Colors.white,
                          ),
                        ),
                        SizedBox(width: 17.0),
                        Container(
                          decoration:
                              BoxDecoration(shape: BoxShape.circle, boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10.0,
                            )
                          ]),
                          child: CircleAvatar(
                            child: Icon(
                              Icons.person,
                              color: Colors.black,
                              size: 30.0,
                            ),
                            radius: 26.0,
                            backgroundColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Stack(
              overflow: Overflow.visible,
              fit: StackFit.passthrough,
              children: <Widget>[
                // Container(
                //   height: MediaQuery.of(context).size.height * 0.35,
                //   color: Colors.red,
                // ),
                // Positioned( top: 50.0,
                //                     child:
                Container(
                  height: MediaQuery.of(context).size.height,
                  color: Colors.white,
                ),
                SizedBox(height: 10.0),
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  decoration: BoxDecoration(
                    color: Color(0xFFFAD900),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 176.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35.0),
                            topRight: Radius.circular(35.0))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.0, right: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35.0),
                        topRight: Radius.circular(35.0),
                      ),
                    ),
                    height: MediaQuery.of(context).size.height * 0.45,
                    width: MediaQuery.of(context).size.width * 0.05,
                    child: Image.asset(
                      'assets/plate6.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 85.0, right: 85.0, top: 170.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.all(Radius.circular(17.0))),
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.width * 0.1,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 120.0),
                          child: Text(
                            'Eat Greek',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22.0),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 40.0),
                          child: Text(
                            'Eastern Europe greek salads',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                                fontSize: 14.0),
                          ),
                        ),
                        Divider(
                          color: Colors.grey,
                          endIndent: 22.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.amber,
                              radius: 15.0,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.amber,
                              radius: 15.0,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.amber,
                              radius: 15.0,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 350.0,
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.amber,
                              radius: 30.0,
                            ),
                            Text(
                              'Lorem',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.amber,
                              radius: 30.0,
                            ),
                            Text(
                              'Lorem',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.amber,
                              radius: 30.0,
                            ),
                            Text(
                              'Lorem',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.amber,
                              radius: 30.0,
                            ),
                            Text(
                              'Lorem',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 440.0),
                  child: Divider(
                    thickness: 3.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.0,
                    right: 10.0,
                    top: 480.0,
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    color: Colors.transparent,
                    child: Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Padding(
                              padding:
                                  EdgeInsets.only(right: 40.0, bottom: 7.0),
                              child: Text(
                                'All Restaurant',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22.0,
                                ),
                              ),
                            ),
                            Text(
                              'Sorted by Fastest Delivery',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16.0,
                                ),
                            ),
                          ],
                        ),
                        Padding( padding: EdgeInsets.only(bottom: 75.0, left:140.0 ),
                                                  child: CircleAvatar(
                            radius: 30.0,
                            backgroundColor: Colors.grey[200],
                            child: Icon(Icons.settings, size: 35.0,color: Colors.black),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 35.0, right: 35.0, top: 550.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.all(Radius.circular(17.0))),
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.width * 0.1,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 200.0),
                          child: Text(
                            'Eat Greek',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22.0),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 140.0, left:20.0),
                          child: Text(
                            'Eastern Europe greek salads',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                                fontSize: 14.0),
                          ),
                        ),
                        Padding( padding: EdgeInsets.symmetric(horizontal: 15.0 ),
                                                  child: Divider(
                            color: Colors.grey,
                            
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.amber,
                              radius: 15.0,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.amber,
                              radius: 15.0,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.amber,
                              radius: 15.0,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
