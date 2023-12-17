import 'package:bmi_calculator_01_jumabek/components/BmiController.dart';
import 'package:bmi_calculator_01_jumabek/components/secBtn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AgeSelector
 extends StatelessWidget {
  const AgeSelector
  ({super.key});

  @override
  Widget build(BuildContext context) {
    BmiController bmiController = Get.put(BmiController());
    return  Container(
   padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
   borderRadius: BorderRadius.circular(10),
  color: Theme.of(context).colorScheme.primaryContainer,
   ),
   height: 250,
                                  
  child: Column(
    children: [Row(
    mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Text("Age",
 style: TextStyle(
    fontSize: 18,
    color: Theme.of(context).colorScheme.
    onSecondaryContainer
    ),
  ),
  ],
 ),
  SizedBox(height: 10),
                Row(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
               Obx(() => Text("${bmiController.age.value}",
          style: TextStyle(
          fontSize: 60,
               fontWeight: FontWeight.bold,
         color: Theme.of(context).colorScheme.onBackground),
          ),
          ),
         ],
         ),
       Row(
     mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
      SecBtn(onpress: (){
        bmiController.age.value++;
      },
        icon: Icons.add),
      SecBtn(onpress: (){
        bmiController.age.value--;
        },
     icon: Icons.minimize),
     ],
  ),

 ],
  ),
 );
  }
}

