import 'package:flutter/material.dart';
import './small.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () { },
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.11,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/dp.png'), fit: BoxFit.cover),
                    color: Colors.red,
                    border: Border.symmetric(
                      horizontal: BorderSide(color: Colors.black, width: 2.0),
                      vertical: BorderSide(color: Colors.black, width: 2.0),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(7.0),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(23.0),
            child: Row(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.11,
                  color: Colors.grey[850],
                  width: MediaQuery.of(context).size.width * 0.005,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Art is',
                        style: TextStyle(
                            fontSize: 40.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'business',
                        style: TextStyle(
                            fontSize: 34.0, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.9,
              width: double.infinity,
              color: Colors.transparent,
              child: Stack(
                fit: StackFit.passthrough,
                children: <Widget>[
                  Positioned(
                    top: 0.0,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.19,
                      width: MediaQuery.of(context).size.width * 0.45,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/pic1.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  Positioned(top: 50.0, left: 28, child: SmallBox('Moore')),
                  Positioned(
                    top: 170.0,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.19,
                      width: MediaQuery.of(context).size.width * 0.45,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/pic2.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  Positioned(top: 220.0, left: 28, child: SmallBox('Billy')),
                  Positioned(
                    top: 0.0,
                    left: 196.0,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.405,
                      width: MediaQuery.of(context).size.width * 0.45,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/pic4.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 141.0,
                    left: 225,
                    child: SmallBox('Swain'),
                  ),
                  Positioned(
                    top: 342.0,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/pic6.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      height: MediaQuery.of(context).size.height * 0.20,
                      width: MediaQuery.of(context).size.height * 0.7,
                    ),
                  ),
                  Positioned(
                    left: 130,
                    top: 410,
                    child: SmallBox('Sdiouna'),
                  ),
                   Positioned(
                    top: 522.0,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.19,
                      width: MediaQuery.of(context).size.width * 0.45,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/pic3.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 28.0,
                    top: 578.0,
                    child: SmallBox('Aderv'),
                  ),
                   Positioned(
                     left: 196.0,
                    top: 522.0,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.19,
                      width: MediaQuery.of(context).size.width * 0.45,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/pic1.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 225.0,
                    top: 578.0,
                    child: SmallBox('Stacey'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
