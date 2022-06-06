import 'package:flutter/material.dart';
import 'package:tenshi/widgets/text_medium.dart';

class TextFieldWidget extends StatelessWidget {
  final String? label;
  final bool? isNumber;
  final double? width;
  const TextFieldWidget({Key? key, this.label, this.width, this.isNumber = false}) : super(key: key);

  Widget _textField({String? label, bool isNumber = false, double? width}) {
    return SizedBox(
      width: width ?? 300,
      child: TextFormField(
        keyboardType: isNumber ? TextInputType.number : TextInputType.text,
        decoration: InputDecoration(
          label: TextMediumWidget("$label"),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)
          )
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _textField(label: "$label", isNumber: isNumber!, width: width);
  }
}