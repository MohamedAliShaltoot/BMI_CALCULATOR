import 'package:flutter/material.dart';

Widget customContainer(
    {required String text,
    required String assetImage,
    required bool selected,
    Color blueColor = Colors.blue,
    Color blackBlueColor = const Color(0xff252a48),
    Color borderSideColor = Colors.white,}) {
  return Container(
    decoration: BoxDecoration(
      
      border: Border.all(color:  borderSideColor, width: 2),
      color: selected ? blueColor : blackBlueColor,
      borderRadius: const BorderRadius.all(
        Radius.circular(30),
      ),
    ),
    width: 180,
    height: 180,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image(
            image: AssetImage(assetImage),
            width: 100,
            height: 100,
            color: Colors.white),
        Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ],
    ),
  );
}
