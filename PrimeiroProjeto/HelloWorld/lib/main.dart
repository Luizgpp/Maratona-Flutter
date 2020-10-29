import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(Container(
    child: Center(
      child: Text(
        'Hello World',
        textDirection: TextDirection.rtl,
        style: TextStyle(color: Colors.white, fontSize: 30.0),
      ),
    ),
  ));
}
