import 'dart:math';

import 'package:bmi_calculator/CustomWidgets/custom_button.dart';
import 'package:bmi_calculator/CustomWidgets/custom_container.dart';
import 'package:bmi_calculator/CustomWidgets/custom_data_container.dart';
import 'package:bmi_calculator/Screens/bmi_screen.dart';
import 'package:bmi_calculator/Screens/infomation_screen.dart';

import 'package:bmi_calculator/core/utils/constants.dart';

import 'package:flutter/material.dart';

class Check extends StatefulWidget {
  const Check({super.key});

  @override
  State<Check> createState() => _CheckState();
}

class _CheckState extends State<Check> {
  double weightValue = 80;
  double ageValue = 22;
  double height = 120;

  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backgroundColor,
      appBar: AppBar(
        backgroundColor: Constants.appBarBackgroundColor,
        title: const Text(
          Constants.applicationScreenTitle,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => setState(() {
                      selected = true;
                    }),
                    child: customContainer(
                        blueColor: Colors.blue,
                        blackBlueColor: const Color(0xff252a48),
                        text: Constants.male,
                        assetImage: Constants.maleImage,
                        selected: selected),
                  ),
                  GestureDetector(
                    onTap: () => setState(() {
                      selected = false;
                    }),
                    child: customContainer(
                        blueColor: const Color(0xff252a48),
                        blackBlueColor: Colors.blue,
                        text: Constants.female,
                        assetImage: Constants.femaleImage,
                        selected: selected),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 3, 44, 77),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                width: 400,
                height: 200,
                child: const Bmi(),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Color.fromARGB(255, 3, 44, 77),
                      ),
                      width: 170,
                      height: 180,
                      child: customDataContainer(
                          onPressed1: () {
                            setState(() {
                              weightValue++;
                            });
                          },
                          onPressed2: () {
                            setState(() {
                              weightValue--;
                            });
                          },
                          text: "WEIGHT",
                          value: weightValue,
                          hintText1: 'Increment weight',
                          hintText2: 'decrement weight')),
                  Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: // Color.fromARGB(255, 14, 4, 52),
                            Color.fromARGB(255, 3, 44, 77),
                      ),
                      width: 170,
                      height: 180,
                      child: customDataContainer(
                          onPressed1: () {
                            setState(() {
                              ageValue++;
                            });
                          },
                          onPressed2: () {
                            setState(() {
                              ageValue--;
                            });
                          },
                          text: Constants.age,
                          value: ageValue,
                          hintText1: 'Increment age',
                          hintText2: 'decrement age')),
                ],
              ),
              const SizedBox(height: 30),
              customButton(
                  text: Constants.calculate,
                  onPressed: () {
                    double result = weightValue / pow(height / 100, 2);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Info_screen(
                          age: ageValue,
                          gender: selected,
                          result: result,
                        ),
                      ),
                    );
                  },
                  textColor: Colors.white,
                  backgroundColor: Colors.black,
                  borderSideColor: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}
