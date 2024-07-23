import 'dart:math';

import 'package:bmi_calculator/bmi_screen.dart';
import 'package:bmi_calculator/infomation_screen.dart';
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
    return   Scaffold(
        backgroundColor:
        const Color.fromARGB(255, 14, 4, 52),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 14, 4, 52),
          title: const Text(
            "BMI CALCULATOR",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 25),
          ),
        ),
        body: Padding(
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
                       child: Container(
                      
                        decoration:  BoxDecoration(
                            color:  selected ? Colors.blue : const Color(0xff252a48),
                            
                            
                                
                            
                            borderRadius: const BorderRadius.all(Radius.circular(30),
                            ),
                            ),
                        width: 180,
                        height: 180,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                          Image(image: AssetImage("images/male-gender.png"),width: 100,height:100,color:Colors.white),
                                           
                                           Text("MALE",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),
                                           ),
                          ],
                        ),
                                           ),
                                          
                     ),
                  
                  GestureDetector(
                    child: Container(
                      decoration:  BoxDecoration(
                        color:selected ? const Color(0xff252a48) : Colors.blue,
                       
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      width: 180,
                      height: 180,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                        Image(image: AssetImage("images/femenine.png",),width: 100,height:100,color:Colors.white),
                    
                    Text("FEMALE",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
                        ],
                      ),
                    ),
                   
                                 onTap: () => setState(() {
                    selected = false;
                  }),          
                  ),
                ],
              ),
          
              
          
              const SizedBox(height: 20),
          
              
              
          
              Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color:Color.fromARGB(255, 3, 44, 77),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                width: 400,
                height: 200,
                child: const Bmi(),

                    

  
           ) ,
          

               const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
Container(
                decoration: const BoxDecoration(
                  
                  borderRadius: BorderRadius.all(Radius.circular(20),
                  ),
                  color: Color.fromARGB(255, 3, 44, 77),
                ),
                width: 170,
                height: 180,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                const Text("WEIGHT",style: TextStyle(color: Colors.white,fontSize: 29),),
                Text("$weightValue",style: const TextStyle(color: Colors.white,fontSize: 35),),
                Row(
                  
                  children: [
                    IconButton(onPressed: (){
                      setState(() {
                         weightValue++;
                      });
                     
                    }, icon: const Icon(Icons.add),color: Colors.white,padding: const EdgeInsets.all(30),),
                     IconButton(onPressed: (){
                      setState(() {
                         weightValue--;
                      });
                     }, icon: const Icon(Icons.remove),color: Colors.white,padding: const EdgeInsets.all(30),),
                  ],
                ),
                
                
                  ],
                ),
               ),

Container(
                decoration: const BoxDecoration(
                  
                  borderRadius: BorderRadius.all(Radius.circular(20),
                  ),
                  color:// Color.fromARGB(255, 14, 4, 52),
                  Color.fromARGB(255, 3, 44, 77),
                ),
                width: 170,
                height: 180,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
const Text("AGE",style: TextStyle(color: Colors.white,fontSize: 29),
),

Text("$ageValue",style: const TextStyle(color: Colors.white,fontSize: 35),
),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    IconButton(onPressed: (){
      setState(() {
ageValue++;
                      });
    }, icon: const Icon(Icons.add),color: Colors.white,padding: const EdgeInsets.all(30),),
     IconButton(onPressed: (){
      setState(() {
                         ageValue--;
                      });
     }, icon: const Icon(Icons.remove),color: Colors.white,padding: const EdgeInsets.all(30),),
  ],
),

                  ],

                ),
               ),
            ],
          ),
              const SizedBox(height: 7), 
             
              

GestureDetector(
  onTap: (){
double result = weightValue / pow(height/100, 2);
Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>   Info_screen(
      
      Age: ageValue ,
      gender: selected,
      result: result, 
    ),
    ),
  );



}, child: const Text("Check Your BMI",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,backgroundColor: Colors.red,),),

          ),
      
         ],
                ),
              ),
               );
  }
}