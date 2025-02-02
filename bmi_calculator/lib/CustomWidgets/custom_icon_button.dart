import 'package:flutter/material.dart';

Widget customIconButton(
    {required VoidCallback onPressed,
    Color iconColor = Colors.white,
    required String hintText,
    required Icon icon,
    Color borderSideColor = Colors.white,}) {
  return Container(
    decoration:  BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(color: borderSideColor, width: 2)
    ),
    child: IconButton(
      iconSize: 15,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(Colors.black),
      ),
      tooltip: hintText,
      onPressed: onPressed,
      icon: icon,
      color: Colors.white,
      padding: const EdgeInsets.all(20),
    ),
  );
}
