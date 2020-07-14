import 'package:flutter/material.dart';
import './cont.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(vsync: this, length: 3);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20.0,right: 20.0, top: 25.0),
            child: Row(              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Browse',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                ),
                CircleAvatar(
                  radius: 24.0,
                  backgroundImage: AssetImage('assets/dp.png'),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            child: TabBar(
              labelStyle:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              unselectedLabelStyle:
                  TextStyle(fontWeight: FontWeight.w400, fontSize: 15.0),
              labelPadding: EdgeInsets.all(10.0),
              controller: tabController,
              indicatorColor: Colors.transparent,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 4.0,
              isScrollable: true,
              labelColor: Colors.grey[800],
              unselectedLabelColor: Colors.grey[400],
              tabs: <Widget>[
                Tab(
                  child: Text(
                    'Artists',
                  ),
                ),
                Tab(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 4.0,
                          backgroundColor: Colors.red[400],
                        ),
                        Text(
                          'Exhibitions',
                        ),
                      ],
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Works',
                  ),
                ),
              ],
            ),

            
          ),
         
          Container(
              height: MediaQuery.of(context).size.height*0.4,
              child: TabBarView(
                controller: tabController,
                children: <Widget>[
                 Content(),
                 Container(
                   height: 25.0,
                   width: 25.0,
                   color: Colors.orange,
                 ),
                 Container(
                   height: 25.0,
                   width: 25.0,
                   color: Colors.indigo,
                 ),
                  
                ],
              ),
            ),
        ],
      ),
    );
  }
}
