import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final double width;
  final double height;
  final Color backgroundColor;
  final double radius;
  final double widthBorder;
  final Color borderColor;
  final List<BoxShadow> shadow;
  final String value;
  final void Function() onPressed;
  final Color colorValue;

  Button({
    this.width,
    this.height,
    this.backgroundColor,
    this.radius,
    this.widthBorder,
    this.borderColor,
    this.shadow,
    this.value,
    this.onPressed,
    this.colorValue,
  });

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
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
        border: Border.all(width: widget.widthBorder ?? 0, color: widget.borderColor ?? Colors.transparent),
        boxShadow: widget.shadow,
      ),
      child: new MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(widget.radius ?? 0),
        ),
        onPressed: () => widget.onPressed(),
        child: new Text(widget.value ?? "Valider", style: TextStyle(color: widget.colorValue ?? Colors.white)),
      )
    );
  }
}