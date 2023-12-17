
import 'package:bmi_calculator_01_jumabek/components/AgeSelector.dart';
import 'package:bmi_calculator_01_jumabek/components/BmiController.dart';
import 'package:bmi_calculator_01_jumabek/components/PrimariBatton.dart';
import 'package:bmi_calculator_01_jumabek/components/RactBtn.dart';
import 'package:bmi_calculator_01_jumabek/components/WeightSelector.dart';
import 'package:bmi_calculator_01_jumabek/components/heightSelector.dart';
import 'package:bmi_calculator_01_jumabek/components/themeChangeBtn.dart';
import 'package:bmi_calculator_01_jumabek/config/controler/themecontroler.dart';
import 'package:bmi_calculator_01_jumabek/pages/Resultat.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.put(ThemeController());
    BmiController bmiController = Get.put(BmiController());
    return  Scaffold(
      body: SafeArea(
 child: Padding(
  padding: const EdgeInsets.all(10),
 child: Column(
   children: [
   const ThemeChangeBtn(),
 Row(
 children: [
    Text("Ассаламу Алейкум",style:TextStyle(
    color: Theme.of(context).
      colorScheme.onSecondaryContainer,
   ) ,
  ),
                     
  ],
 ),
 Row(
   children: [
  Text("BMI CALCULATOR",style:TextStyle(
     fontSize: 30,
   fontWeight: FontWeight.bold,
  color: Theme.of(context).
     colorScheme.onBackground,
     ) ,
      ),
     ],
     ),
   const SizedBox(height: 20),
    Row(
  children: [
    PrimariButton( 
                       
  onpress: () {
     bmiController.adamdar("Male");
   },icon:
   Icons.male, btName: "MALE",
    ),

   const SizedBox(width: 20),

   PrimariButton(
   onpress: () {
   bmiController.adamdar("FeMale");
   },icon: Icons.
   female, btName: "FEMALE",
 ),
         ],
          ),
        SizedBox(height: 20),
            const Expanded(
              child: Row(
   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
      HeightSelector(),
  SizedBox(width: 20),
    Expanded(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            WeightSelector(),
        AgeSelector(),
   ],
      ),
      ),
        ],
      ),
       ),
     const SizedBox(height: 20),
       MyRactBtn(onpress: (){
        bmiController.BMiCalculator();
        Get.to(const ResultatPage());
       }, 
    btName: "Alga",
    icon: Icons.done_all_rounded,
   ),
          ],
          ),
        ),
      ),
    );
    
  }
}