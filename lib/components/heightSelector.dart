import 'package:bmi_calculator_01_jumabek/components/BmiController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class HeightSelector extends StatelessWidget {
  const HeightSelector({super.key});

  @override
  Widget build(BuildContext context) {
BmiController bmiController = Get.put(BmiController());
    return Expanded(
  child: Container(
       decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
   color: Theme.of(context).colorScheme.primaryContainer,
         ),
       child: Column(
      children: [
           Row(
       mainAxisAlignment: MainAxisAlignment.center,
               children: [
               Text("HEIGHT(СМ)",
            style: TextStyle(
               fontSize: 18,
             color: Theme.of(context).colorScheme.onSecondaryContainer),
              ),
         ],
          ),
       Expanded(child:
       Obx(() =>  SfSlider.vertical(
      min: 50,
      max: 250,
      value: bmiController.height.value,
      interval: 25,
      showTicks: true,
      showLabels: true,
      enableTooltip: true,
      minorTicksPerInterval: 5,
      onChanged: (dynamic value) {
      bmiController.height.value = value;
      },
    ) ,
    ),
    ),
      ],
      ),
      ),
 );
  }
}

