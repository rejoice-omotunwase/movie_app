import 'package:flutter/material.dart';
import 'onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2)).then((value) =>
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => const OnBoardingPage())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD20001),
      body: Center(
        child: Image.asset(
          "assets/images/app-logo.png",
          width: MediaQuery.of(context).size.width * 0.7,
        ),
      ),
    );
  }
}
