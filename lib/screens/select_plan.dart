import 'package:flutter/material.dart';

class SelectPlan extends StatelessWidget {
  const SelectPlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xffE4E3E3),
          appBar: AppBar(
            automaticallyImplyLeading: false,
            elevation: 0,
            backgroundColor: const Color(0xffE4E3E3),
            title: const Center(
              child: Image(
                  image: AssetImage("assets/images/app-logo.png"),
                  height: 60,
                  width: 60),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: const [
                            Image(
                              image: AssetImage("assets/images/background.png"),
                              width: 70,
                              height: 70,
                            ),
                            Image(
                              image: AssetImage("assets/images/Vector.png"),
                              width: 25,
                              height: 25,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Text(
                "Choose your plan.",
                style: TextStyle(
                    color: Color(0xffD20001),
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              )
            ],
          )),
    );
  }
}
