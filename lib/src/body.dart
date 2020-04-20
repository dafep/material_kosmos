import 'package:flutter/material.dart';

class BodyKosmos extends StatefulWidget {
  final Widget child;
  BodyKosmos({@required this.child});
  @override
  _BodyKosmosState createState() => _BodyKosmosState();
}

class _BodyKosmosState extends State<BodyKosmos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: widget.child,
      ),
    );
  }
}