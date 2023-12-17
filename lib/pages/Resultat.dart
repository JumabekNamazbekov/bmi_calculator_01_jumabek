import 'package:bmi_calculator_01_jumabek/components/BmiController.dart';
import 'package:bmi_calculator_01_jumabek/components/RactBtn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ResultatPage extends StatelessWidget {
  const ResultatPage({super.key});

  @override
  Widget build(BuildContext context) {
    BmiController bmiController = Get.put(BmiController());
   
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(10),
        child: SafeArea(
          child: Column(
            children: [
             Row(
              children: [
              Icon(Icons.arrow_back_ios_new,
              size: 20
              ),
                Text("Аркага"),
              ],
             ) ,
             SizedBox(height: 20),

             Row(
               children: [
                 Obx(() => Text("Сиздин салмагыныз",
                 style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: bmiController.colorStattus.value,
                 ),
                 ),),
               ],
             ),
             SizedBox(height: 10),

             Container(
              height: 400,
               child: Expanded(
                 child: Obx(() => CircularPercentIndicator(
                  animationDuration: 1000,
                  footer: Text("${bmiController.BMIstatus.value}",
                  style: TextStyle(color: bmiController.colorStattus.value,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  ),
                  ),
                  radius:130,
                      lineWidth: 30,
                      animation: true,
                      circularStrokeCap: CircularStrokeCap.round,
                      percent: bmiController.tempBMI.value/100,
                      center: Center(
                        child: new Text("${ bmiController.BMI.value}%",
                        style: TextStyle(color:
                        bmiController.colorStattus.value,
                        fontSize: 60,
                        ),
                        ),
                      ),
                      progressColor: 
                     bmiController.colorStattus.value,
                      backgroundColor: 
                      bmiController.colorStattus.value.
                      withOpacity(0.2),
                 ),)
               ),
             ),
             SizedBox(height: 20),
             Padding(
               padding: const EdgeInsets.all(10),
               child: Container(
                child: Text("Сиздин BMI 20,7 ге барабар, бул сиздин салмагыңыз боюңуздагы чоңдор үчүн нормалдуу экенин билдирет. Сиздин боюңуз үчүн нормалдуу салмак диапазону 53,5 килограммдан 72 килограммга чейин.Дени сак салмакты сактоо ашыкча салмак жана семирүү менен байланышкан өнөкөт оорулардын рискин азайтат"),
                  decoration: BoxDecoration(
                    color: Theme.of(context).
                    colorScheme.primaryContainer,
                    borderRadius: BorderRadius.
                    circular(10),
                  ),
                  ),
                   ),
              SizedBox(height: 20),
              MyRactBtn(onpress: (){
                Get.back();
              },
               btName: "Жакшылап бил", 
              icon: Icons.arrow_back_ios_new_outlined
              ),
            ],
          ),
        ),
      ),
    );
  }
}