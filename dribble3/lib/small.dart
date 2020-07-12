import 'package:flutter/material.dart';

class SmallBox extends StatelessWidget {
  String des;
  SmallBox(this.des);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.05,
      width: MediaQuery.of(context).size.width * 0.3,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12.0))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            des,
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
