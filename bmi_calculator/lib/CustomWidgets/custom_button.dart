import 'package:flutter/material.dart';

Widget customButton(
    {required String text,
    required VoidCallback onPressed,
    double borderRadius = 20,
    Color backgroundColor = Colors.orange,
    Color borderSideColor = Colors.black,
    Color textColor = Colors.black,
     double fontSize = 20,

    }) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all<Color>(backgroundColor),
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              side:  BorderSide(color: borderSideColor, width: 2),
              borderRadius: BorderRadius.circular(borderRadius))),
    ),
    child: Text(text,style: TextStyle(color: textColor,fontSize: fontSize),),
  );
}


