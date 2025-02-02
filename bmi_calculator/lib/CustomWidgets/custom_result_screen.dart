import 'package:flutter/material.dart';

Widget customResultContainer(
    {required String text1,
    Color textColor = Colors.white,
    double fontSize = 30,
    bool selected = false}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2),
                  color: Colors.blue),
              child: Text(
                text1,
                style: TextStyle(color: textColor, fontSize: fontSize),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
