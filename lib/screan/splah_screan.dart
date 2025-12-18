import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:taskaty1/screan/auth_screan.dart';

class splah_home extends StatefulWidget {
     const splah_home({super.key});

  @override
  State<splah_home> createState() => _splah_homeState();

}

class _splah_homeState extends State<splah_home> {
  @override
  void initState() {
    nextscrean();
    super.initState();
  }
     @override
     Widget build(BuildContext context) {
       return Scaffold(
         body: Center(
           child: Column(

             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Lottie.asset("assets/imags/splash.json"),
               Text("Taskaty",style: TextStyle(
                 fontSize: 25,
                 fontWeight: FontWeight.w700
               ),),
               SizedBox(height: 15,),
               Text("it's Time to get organize ",style: TextStyle(
                 fontSize:20,
                 color: Colors.grey
               ),)
             ],
           ),
         ),
       );
     }


     void nextscrean(){
       Future.delayed(Duration (seconds:2),(){
         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Authscrean()));
       });
     }
}
