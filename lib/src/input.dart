import 'package:flutter/material.dart';

class InputKosmos extends StatefulWidget {
  final double width;
  final double height;
  final Color backgroundColor;
  final double radius;
  final double widthBorder;
  final Color borderColor;
  final TextEditingController controller;
  final String hintText;

  InputKosmos({
    this.width,
    this.height,
    this.backgroundColor,
    this.radius,
    this.widthBorder,
    this.borderColor,
    this.controller,
    this.hintText,
  });

  @override
  _InputKosmosState createState() => _InputKosmosState();
}

class _InputKosmosState extends State<InputKosmos> {
  double screenWidth;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: widget.width ?? screenWidth,
      height: widget.height ?? 50,
      decoration: BoxDecoration(
        color: widget.backgroundColor ?? Colors.transparent,
        borderRadius: BorderRadius.all(
          Radius.circular(widget.radius ?? 0),
        ),
        border: Border.all(width: widget.widthBorder, color: widget.borderColor ?? Colors.transparent),
      ),
      child: new Center(
        child: new Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: new TextField(
            controller: widget.controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: widget.hintText,
            ),
          ),
        ),
      ),
    );
  }
}