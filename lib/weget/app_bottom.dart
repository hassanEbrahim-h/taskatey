


import 'package:flutter/material.dart';

class AppBottom extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  const AppBottom({super.key, required this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return
      ElevatedButton(
        style:ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            minimumSize: Size(double.infinity, 60),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)
            )
        ) ,

         onPressed:onPressed,child: Text( title,style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white
      ),),
      );
  }
}
