import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'Auth_Page/FAPage.dart';

class SplacePage extends StatefulWidget {
  const SplacePage({super.key});
  static final String id = "SplacePage";
  @override
  State<SplacePage> createState() => _SplacePageState();
}

class _SplacePageState extends State<SplacePage> {
  _initTimer(){
    Timer(Duration(seconds: 2),(){
      _callNextPage();
    }
    );}

  _callNextPage(){
    Navigator.pushReplacementNamed(context, FAPage.id);
  }


  @override
  void initState() {
    super.initState();
    _initTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image(image: AssetImage('assets/images/logo.png'),),
          ),
          SizedBox(height: 100,),
          LoadingAnimation(color: Color(0xFFFF5001)),

        ],
      ),
    );
  }
}

class LoadingAnimation extends StatelessWidget {
  final Color color;

  const LoadingAnimation({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpinKitFadingCircle(
      color: color,
      size: 50.0,
    );
  }
}