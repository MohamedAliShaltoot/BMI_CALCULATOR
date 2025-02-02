import 'package:bmi_calculator/CustomWidgets/custom_result_screen.dart';
import 'package:bmi_calculator/core/utils/constants.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Info_screen extends StatelessWidget {
  final bool gender;
  final double age;
  final double result;

  const Info_screen({
    super.key,
    required this.age,
    required this.gender,
    required this.result,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: 
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            }
            ,
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
        ),
        backgroundColor: Constants.appBarBackgroundColor,
        title: const Text(
          Constants.resultScreenTitle,
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        centerTitle: true,
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
     
customResultContainer(text1:   "Gender : ${gender ? "Male" : "Female"} ",),
    customResultContainer(text1:  "Result : ${result.round()} ",),
    customResultContainer(text1:  "Age : ${age.round()}" ),

    
  


        ],
      ),
    );
  }
}


/*
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
                      style: const TextStyle(color: Colors.white, fontSize: 35),
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
                      "Age : ${age.round()}",
                      style: const TextStyle(color: Colors.white, fontSize: 35),
                      textAlign: TextAlign.center,
                    )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),

*/