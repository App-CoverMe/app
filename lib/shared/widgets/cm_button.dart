import 'package:flutter/material.dart';

class CmButton extends StatelessWidget {
  final EdgeInsets outerPadding;
  final double width;
  final double height;
  final double radius;
  final Color color;
  final Color borderColor;
  final bool hasShadow;
  final String text;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final void Function() onTap;

  CmButton({
    this.outerPadding: const EdgeInsets.all(0),
    this.width,
    this.height: 48.0,
    this.radius: 8.0,
    this.color: Colors.blueAccent,
    this.borderColor: Colors.blueAccent,
    this.hasShadow: true,
    this.text,
    this.textColor: Colors.white,
    this.fontSize: 15.0,
    this.fontWeight: FontWeight.normal,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: this.outerPadding,
      child: GestureDetector(
        onTap: this.onTap,
        child: Container(
          width: this.width,
          height: this.height,
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: this.borderColor),
            borderRadius: BorderRadius.circular(this.radius),
            color: this.color,
            boxShadow: this.hasShadow
                ? [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(1, 1),
                    ),
                  ]
                : [],
          ),
          child: Center(
            child: Text(
              this.text,
              style: TextStyle(
                color: this.textColor,
                fontSize: this.fontSize,
                fontWeight: this.fontWeight,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
