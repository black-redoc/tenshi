import 'package:flutter/material.dart';

class FloatingButtonWidget extends StatelessWidget {
  const FloatingButtonWidget({
    Key? key,
    this.child,
    this.width,
    this.height,
    this.onPressed,
    this.backgroundColor
  }) : super(key: key);
  final Widget? child;
  final double? width;
  final double? height;
  final Function()? onPressed;
  final Color? backgroundColor;

  Widget _btn({
    Widget? child,
    Function()? onPressed,
    Color? backgroundColor,
    double? width,
    double? height
  }) {
    return Container(
      width: width ?? 300,
      height: height,
      margin: const EdgeInsets.symmetric(vertical: 2.5, horizontal: 10),
      child: ConstrainedBox(
        constraints: const BoxConstraints(minWidth: double.infinity, minHeight: 40),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              backgroundColor ?? Colors.cyan
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )
            )
          ),
          child: child ?? Container(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _btn(
      child: child,
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      height: height,
      width: width
    );
  }
}