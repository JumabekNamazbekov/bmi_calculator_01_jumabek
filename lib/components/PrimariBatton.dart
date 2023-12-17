import 'package:bmi_calculator_01_jumabek/components/BmiController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrimariButton extends StatelessWidget {
  final IconData icon;
  final String btName;
  final VoidCallback onpress;
  const PrimariButton({
    super.key,
   required this.icon,
    required this.btName,
     required this.onpress});

  @override
  Widget build(BuildContext context) {
    BmiController bmiController = Get.put(
      BmiController());
    return  Expanded(
   child: InkWell(
          onTap: onpress,
          child: Obx(
            () => Container(
              height: 50,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: bmiController.Adam.value == btName
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.primaryContainer),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icon,
                      color: bmiController.Adam.value == btName
                          ? Theme.of(context).colorScheme.primaryContainer
                          : Theme.of(context).colorScheme.primary),
                  SizedBox(width: 10),
                  Text(
                    btName,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                        color: bmiController.Adam.value == btName
                            ? Theme.of(context).colorScheme.primaryContainer
                            : Theme.of(context).colorScheme.primary),
                  ),
                ],
              ),
            ),
          )),
  );
  }
}