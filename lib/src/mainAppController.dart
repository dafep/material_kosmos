import 'package:flutter/material.dart';

class MainAppControllerKosmos extends StatelessWidget {
  final Widget appBar;
  final Widget body;
  final Widget bottomNavigationBar;

  MainAppControllerKosmos({
    this.appBar,
    this.body,
    this.bottomNavigationBar,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        appBar != null ? Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: appBar,
        ) : new Container(),
        body != null ? Positioned(
          left: 0,
          top: 0,
          right: 0,
          bottom: 0,
          child: body,
        ) : new Container(),
        bottomNavigationBar != null ? Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: bottomNavigationBar,
        ) : new Container(),
      ],
    );
  }
}