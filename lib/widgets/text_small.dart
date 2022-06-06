import 'package:flutter/material.dart';

class TextSmallWidget extends StatelessWidget {
  const TextSmallWidget(
    this.text,{
    Key? key,
    this.color,
    this.fontWeight,
    this.textAlign
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
        fontSize: 11,
        fontWeight: fontWeight
      )
    );
  }
}