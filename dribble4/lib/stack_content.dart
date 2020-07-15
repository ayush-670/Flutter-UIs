import 'package:flutter/material.dart';

class StackContent extends StatefulWidget {
  @override
  _StackContentState createState() => _StackContentState();
}

class _StackContentState extends State<StackContent> {
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
            height: MediaQuery.of(context).size.height * 0.35,
            width: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(27.0),
                bottomRight: Radius.circular(27.0),
              ),
            ),
          ),
          top: MediaQuery.of(context).size.height * 0.45,
          left: MediaQuery.of(context).size.width * 0.013,
        ),
      ],
    );
  }
}
