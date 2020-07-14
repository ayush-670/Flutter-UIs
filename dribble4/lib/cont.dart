import 'package:flutter/material.dart';

class Content extends StatefulWidget {
  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: <Widget>[
        Positioned( top:150.0,
                  child: Container(
                    height: 150.0, width: 72.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/dp.png'),
                fit: BoxFit.cover
              ),
            ),
          ),
        ),
        Positioned(top:50.0,
          child: Container(height: 150.0, width: 150.0,color: Colors.red,))
      ],
    );
  }
}
