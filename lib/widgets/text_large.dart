import 'package:flutter/material.dart';

class TextLargeWidget extends StatelessWidget {
  const TextLargeWidget(
    this.text,{
    Key? key,
    this.textAlign,
    this.color,
    this.fontWeight
  }) : super(key: key);
  final String? text;
  final TextAlign? textAlign;
  final Color? color;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      "$text",
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontSize: 24,
        fontWeight: fontWeight
      )
    );
  }
}