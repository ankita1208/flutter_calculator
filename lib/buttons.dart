import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({required this.color, required this.text, this.textColor,required this.onButtonClick, super.key});
  final String text;
  final Color color;
  final textColor;

  final Function onButtonClick;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10.0),
        child: SizedBox(
          width: 70,
          height: 70,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: color, // Set your desired background color here
            ),
            onPressed: () => onButtonClick(text),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 16,
                color: textColor,
              ),
            ),
          ),
        ));
  }
}
