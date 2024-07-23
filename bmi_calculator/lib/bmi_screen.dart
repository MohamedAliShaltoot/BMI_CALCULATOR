import 'package:flutter/material.dart';

class Bmi extends StatefulWidget {
  const Bmi({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _Bmi createState() => _Bmi();
}

class _Bmi extends State<Bmi> {
  double _currentSliderValue = 120.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "HEIGHT",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${_currentSliderValue.round()}",
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 35),
            ),
            const Text(
              " cm ",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          ],
        ),
        Slider(
          min: 0.0,
          max: 250.0,
          activeColor: Colors.red,
          inactiveColor: Colors.white,
          value: _currentSliderValue,
          onChanged: (currentSliderValu) {
            setState(() {
              _currentSliderValue = currentSliderValu;
            });
          },
        ),
      ],
    );
  }
}
