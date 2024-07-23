import 'package:flutter/material.dart';

// ignore: camel_case_types
class Info_screen extends StatelessWidget {
  final bool gender;
  final double Age;
  final double result;

  const Info_screen({
    super.key,
    required this.Age,
    required this.gender,
    required this.result,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 14, 4, 52),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 78, 50, 188),
        title: const Center(
            child: Text(
          "BMI RESULT",
          style: TextStyle(color: Colors.white, fontSize: 30),
        )),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 14, 4, 52),
              ),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      width: 210,
                      height: 130,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 9, 9, 23),
                      ),
                      child: Center(
                        child: Text(
                          'Gender : ${gender ? "Male" : "Female"} ',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 210,
                      height: 130,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 9, 9, 23),
                      ),
                      child: Center(
                          child: Text(
                        "Result : ${result.round()} ",
                        style:
                            const TextStyle(color: Colors.white, fontSize: 35),
                      )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 210,
                      height: 130,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 9, 9, 23),
                      ),
                      child: Center(
                          child: Text(
                        "Age : ${Age.round()}",
                        style:
                            const TextStyle(color: Colors.white, fontSize: 35),
                        textAlign: TextAlign.center,
                      )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
