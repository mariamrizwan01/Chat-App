import 'package:chat/Screens/OnboardingScreen2.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => OnboardScreen()));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
  backgroundColor: Color(0xFFF7E9D7), 
          body: SafeArea(
        child: Stack(
          children: [
            Positioned(
            left: -15.5,
          bottom: -16,              
          child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/logoicon.png', 
                      alignment: Alignment.bottomLeft,
                      width: 210.04,
                      height: 213,
                    ),
                  ],
                ),
              ),
            ),
             Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/logo.png"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
