import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  const TextFieldContainer(
      {Key? key,
      required Color this.color,
      required Color this.borderColor,
      required Widget this.child})
      : super(key: key);
  final Color color;
  final Color borderColor;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double width = size.width;
    final double height = size.height;
    return Center(
      child: Container(
        child: child,
        margin: EdgeInsets.symmetric(vertical: 8.0),
        width: width * 0.9,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(
            color: borderColor,
            // width: 2.0,
          ),
        ),
      ),
    );
  }
}
