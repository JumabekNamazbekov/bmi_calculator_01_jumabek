import 'package:flutter/material.dart';

class MyRactBtn extends StatelessWidget {
  final VoidCallback onpress;
  final IconData icon;
  final String btName;
  const MyRactBtn({super.key, 
  required this.onpress,
   required this.btName, 
   required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
    onTap: onpress,
   child:Container(
   height: 50,
 padding:   EdgeInsets.all(10),
    decoration: BoxDecoration(
     borderRadius: BorderRadius.circular(10),
     color: Theme.of(context).colorScheme.primary
  
      ),
         child: Row(
     mainAxisAlignment: MainAxisAlignment.center,
       children: [
     Icon(
       icon,
       color: Theme.of(context).colorScheme.primaryContainer
     ),
         SizedBox(
       width: 10,
     ),
  Text(
    btName,
    style: TextStyle(
    fontSize: 18,
  fontWeight: FontWeight.bold,
    letterSpacing: 1.5,
    color: Theme.of(context).colorScheme.primaryContainer,                              
   ),
   ),
  ],
),
                            
 ),
  );

  }
}