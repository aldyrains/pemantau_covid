import 'package:flutter/material.dart';

class MyHeader extends StatefulWidget {
 final String image;
 final String textTop;
 final String textBottom;
 final double offset;
 
 const MyHeader({Key key , this.image , this.textTop , this.textBottom , this.offset})
    : super(key:key);

  @override
  _MyHeaderState createState() => _MyHeaderState();
}

class _MyHeaderState extends State<MyHeader> {
  @override
  Widget build(BuildContext context) {
    // return ClipPath(
    //   clipper: MyClipper(),
    //   child: COntainer 
    // )
  }
}