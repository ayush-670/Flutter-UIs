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
      backgroundColor: Color(0xFFd4dad0),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            padding: EdgeInsets.only(left: 10.0, top: 20.0),
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
          Padding(
            padding: EdgeInsets.only(
              left: 15.0,
              right: 15.0,
              top: 15.0,
            ),
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: TabBarView(
                controller: tabController,
                children: <Widget>[
                  Content(),
                  Content(),
                  Content(),
                ],
              ),
            ),
            //  s
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.18,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFF121537),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(45.0),
                topRight: Radius.circular(45.0),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        'Popular artists',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0, top: 5.0),
                        child: Container(
                          height: 2.0,
                          width: 60.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(right: 10.0),
                            child: Container(
                              height: 40.0,
                              width: 40.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/dp.png'),fit: BoxFit.cover),
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8.0),
                                ),
                              ),
                            ),
                          ),
                           Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Container(
                              height: 40.0,
                              width: 40.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/dp.png'),fit: BoxFit.cover),
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8.0),
                                ),
                              ),
                            ),
                          ),
                           Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Container(
                              
                              height: 40.0,
                              width: 40.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/dp.png'),fit: BoxFit.cover),
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Container(
                              height: 40.0,
                              width: 40.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFf04970),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8.0),
                                ),
                              ),
                              child: IconButton(icon: Icon(Icons.chevron_right, color: Colors.white,), onPressed: (){}),
                            ),
                          ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
