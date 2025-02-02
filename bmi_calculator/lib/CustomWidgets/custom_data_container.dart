import 'package:bmi_calculator/CustomWidgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

Widget customDataContainer(
    {required VoidCallback onPressed1,
    required VoidCallback onPressed2,

    required String text,
    required double value,
    required String hintText1,
    required String hintText2}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 5),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 29),
        ),
        Text(
          " ${value.ceil()}",
          style: const TextStyle(color: Colors.white, fontSize: 35),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            customIconButton(
              onPressed: onPressed1,
              hintText: hintText1,
              icon: const Icon(
                Icons.add,
              ),
            ),
            customIconButton(
              onPressed: onPressed2,
              hintText: hintText2,
              icon: const Icon(
                Icons.remove,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
