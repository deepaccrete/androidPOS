import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foodchow/constant/color.dart';
import 'package:foodchow/screens/AuthSelectionScreen.dart';
import 'package:foodchow/screens/dashboard.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigateAfterSplash();
   // Timer(
   //   Duration(seconds: 3),
   //     ()=> Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> AuthSelectionScreen()))
   // ) ;
  }

  Future<void> _navigateAfterSplash ()async{
    final prefs = await SharedPreferences.getInstance();
    final bool isLoggedIn = prefs.getBool('isLoggedIn')?? false;

    Timer(Duration(seconds: 3),(){
      if(isLoggedIn){
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> Dashboard()),
        );
      }else{
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> AuthSelectionScreen()),
        );
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: screenBGColor,
      child:Image.asset('assets/images/FOODCHOW1_processed.jpg') ,
    );
  }
}
