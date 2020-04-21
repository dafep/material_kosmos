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
    return Column(
      children: <Widget>[
        body != null ? body : new Container(),
        appBar != null ? appBar : new Container(),
        bottomNavigationBar != null ? bottomNavigationBar : new Container(),
      ],
    );
  }
}