import 'package:flutter/material.dart';

class CenterBodyKosmos extends StatefulWidget {
  final List<Widget> children;
  CenterBodyKosmos({@required this.children});
  @override
  _CenterBodyKosmosState createState() => _CenterBodyKosmosState();
}

class _CenterBodyKosmosState extends State<CenterBodyKosmos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: widget.children,
        ),
      ),
    );
  }
}