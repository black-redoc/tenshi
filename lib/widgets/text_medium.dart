import 'package:flutter/material.dart';

class TextMediumWidget extends StatelessWidget {
  const TextMediumWidget(
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
        fontSize: 14,
        fontWeight: fontWeight
      )
    );
  }
}