import 'package:flutter/material.dart';
import './stack_content.dart';

class Content extends StatefulWidget {
  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(27.0),
              ),
              image: DecorationImage(
                  image: AssetImage('assets/dp2.JPG'), fit: BoxFit.cover),
            ),
          ),
          top: 0.0,
          left: MediaQuery.of(context).size.width * 0.013,
        ),
        Positioned(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(27.0),
                bottomRight: Radius.circular(27.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 25.0, bottom: 10.0),
                  child: Text(
                    'Speechless',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 0.0, bottom: 20.0),
                  child: Text(
                    'Robin Schulz 11,2019',
                    style:
                        TextStyle(fontWeight: FontWeight.w300, fontSize: 18.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 25.0, bottom: 10.0),
                  child: Text(
                    'Lorem ipsum dollar ist',
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 25.0, bottom: 10.0),
                  child: FlatButton(
                    textColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    color: Color(0xFF121537),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0)),
                    child: new Text('Save'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          top: MediaQuery.of(context).size.height * 0.45,
          left: MediaQuery.of(context).size.width * 0.013,
        ),
        // Positioned(
        //    top: MediaQuery.of(context).size.height * 0.75,
        //   left: MediaQuery.of(context).size.width * 0.013,
        //   child: Container(
        //     height: MediaQuery.of(context).size.height * 0.4,
        //     width: double.infinity,
        //     decoration: BoxDecoration(
        //       color: Color(0xFF121537),
        //       borderRadius: BorderRadius.all(
        //       Radius.circular(27.0),
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
