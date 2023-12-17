import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BmiController extends GetxController{

RxString Adam = "MALE".obs;
RxInt weight = 12.obs;
RxInt age = 12.obs;
RxDouble height = 100.0.obs;
RxString BMI = "".obs;
RxDouble tempBMI = 0.0.obs;
RxString BMIstatus = "".obs;
Rx<Color> colorStattus = Color(0xff246AFE).obs;





void adamdar(String adam){
 Adam.value = adam;
}


void BMiCalculator () {
var Hmeter = height/100;
 tempBMI.value = weight / (Hmeter*Hmeter);
 BMI.value = tempBMI.toStringAsFixed(1);
 tempBMI.value = double.parse(BMI.value);
 findstatus();
print(BMI);
}

void findstatus ()
{
if (tempBMI.value <18.5) 
  {
    BMIstatus.value = "Сиздин салмагыныз аз";
    colorStattus.value = Color(0xff00cf39);
  }
if(tempBMI.value >18.5 && tempBMI.value<24.9 )
{
  BMIstatus.value = "Сиздин салмагыныз жакшы";
      colorStattus.value = Color(0xffFFB800);

}

if(tempBMI.value >25.0 && tempBMI.value<29.9 )
{
  BMIstatus.value = "Сиздин салмагыныз ашыкча";
      colorStattus.value = Color(0xffFF5858);

}

if(tempBMI.value >30.0 && tempBMI.value<34.9 )
{
  BMIstatus.value = "Сиз аябай семиз экенсиз";
      colorStattus.value = Color(0xffFF0000);

}

if(tempBMI.value >35.0 )
{
  BMIstatus.value = "Сиз аябай семиз экенсиз, жакында жарыласыз";
      colorStattus.value = Color(0xff000000);

}
}

}