import 'package:bmi_calculator_01_jumabek/config/controler/themecontroler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeChangeBtn extends StatelessWidget {
  const ThemeChangeBtn({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.put(ThemeController());
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(
            padding: EdgeInsets.symmetric(vertical:
             05,horizontal: 15),
            height: 50,
            decoration: BoxDecoration(
              color: Theme.of(context).
              colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(15),
            ),
            child:
             InkWell(
              onTap: (){
                themeController.chnageTheme();
              },
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){
                          
                          },
                          icon:  Icon
                          (Icons.light_mode,
                          color: themeController.isDark.value  ?
                          Theme.of(context).
                          colorScheme.onSecondaryContainer:
                           Theme.of(context).
                          colorScheme.primary,
                          ),
                          ),
                         
                          SizedBox(width: 20),

                          IconButton(onPressed: (){
                            themeController.chnageTheme();
                         },
                          icon:  Icon
                          (Icons.dark_mode,color: themeController.isDark.value ?
                          Theme.of(context).
                          colorScheme.primary 
                           : Theme.of(context).
                          colorScheme.onSecondaryContainer,
                          ),
                          ) ,
                           
                ],
                ),
             ),
              ),
                 ],
                 );
  }
}