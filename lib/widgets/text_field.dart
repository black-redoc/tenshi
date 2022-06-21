import 'package:flutter/material.dart';
import 'package:tenshi/widgets/text_medium.dart';

// ignore: must_be_immutable
class TextFieldWidget extends StatelessWidget {
  final String? label;
  final bool? isNumber;
  final double? width;
  final TextEditingController? textController;
  void Function(String)? onChanged;
  TextFieldWidget({
    Key? key,
    this.label,
    this.width,
    this.textController,
    this.onChanged,
    this.isNumber = false
  }) : super(key: key);

  Widget _textField({String? label, bool isNumber = false, double? width}) {
    return SizedBox(
      width: width ?? 300,
      child: TextFormField(
        controller: textController,
        keyboardType: isNumber ? TextInputType.number : TextInputType.text,
        decoration: InputDecoration(
          label: TextMediumWidget("$label"),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)
          )
        ),
        onChanged: onChanged
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _textField(label: "$label", isNumber: isNumber!, width: width);
  }
}