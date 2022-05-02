import 'package:flutter/material.dart';

class BotonAzul extends StatelessWidget {
  final String text;
  final Function? onPressed;

  const BotonAzul({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(32)
        ),
        width: double.infinity,
        height: 55,
        child: Center(
          child: Text(text, style: TextStyle(color: Colors.white, fontSize: 18)),
        ),
      ),
      onPressed: () => onPressed!(),
    );
  }
}