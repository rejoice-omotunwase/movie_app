import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:simi/screens/sign_in.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  OnBoardingPageState createState() => OnBoardingPageState();
}

class OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const SignIn()),
    );
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset(assetName, width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 20.0, color: Color(0xffFFFFFF));
    const titleStyle = TextStyle(
        fontSize: 45.0, fontWeight: FontWeight.w700, color: Color(0xffFFFFFF));

    const pageDecoration = PageDecoration(
      safeArea: 0,
      bodyAlignment: Alignment.center,
      titleTextStyle: titleStyle,
      bodyTextStyle: bodyStyle,
      pageColor: Color(0xffD20001),
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: const Color(0xffD20001),
      allowImplicitScrolling: true,
      globalHeader: Align(
        alignment: Alignment.topLeft,
        child: SafeArea(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: _buildImage("assets/images/app-logo.png", 60),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "Privacy",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(width: 20),
                    Text(
                      "Help",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      globalFooter: Container(
        margin: const EdgeInsets.only(bottom: 30),
        width: MediaQuery.of(context).size.width * 0.85,
        height: MediaQuery.of(context).size.width * 0.13,
        child: TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.black)),
          child: const Text(
            "SIGN IN",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                color: Colors.white),
          ),
          onPressed: () => Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => const SignIn())),
        ),
      ),
      pages: [
        PageViewModel(
          title: "Watch everywhere",
          body: "Stream on your phone, tablet, laptop and TV.",
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "There’s a plan for every fan",
          body: "Small price. Big entertainment.",
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Cancel online anytime",
          body: "Join today no reason to wait.",
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "How do \nI watch?",
          body:
              "Members that subscribed to The RAW Truth can watch here in the app.",
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: false,
      showNextButton: false,
      showDoneButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
      //rtl: true, // Display as right-to-left

      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 9.0),
      dotsDecorator: const DotsDecorator(
        spacing: EdgeInsets.all(3),
        size: Size(6.0, 6.0),
        color: Color(0xffFFFFFF),
        activeSize: Size(6.0, 6.0),
        activeColor: Color(0xffFFB71A),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
