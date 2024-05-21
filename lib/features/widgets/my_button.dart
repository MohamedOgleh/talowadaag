import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Widget widget;
  final Function onTap;
  final double width;
  final Color color;
  final double hPadding;
  final double vPadding;

  const MyButton(
      {super.key,
      required this.widget,
      required this.onTap,
      this.width = 50,
      required this.color,
      this.hPadding = 10,
      this.vPadding = 12});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      splashColor: Colors.teal.shade200,
      child: Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          alignment: Alignment.center,
          padding:
              EdgeInsets.symmetric(horizontal: hPadding, vertical: vPadding),
          width: width,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4),
          ),
          child: widget),
    );
  }
}
