import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final Function onPressed;
  final String label;
  final EdgeInsets padding;
  final double radius;
  final double height;

  const PrimaryButton({
    Key key,
    this.onPressed,
    this.label,
    this.height = 52.0,
    this.radius = 10.0,
    this.padding = const EdgeInsets.only(top: 40.0),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(label?.toUpperCase() ?? ''),
        style: ElevatedButton.styleFrom(
          minimumSize: Size.fromHeight(height),
          textStyle: TextStyle(
            fontFamily: 'SquadaOne',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(radius),
            ),
          ),
        ),
      ),
    );
  }
}
