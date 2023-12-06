import 'package:flutter/material.dart';
import 'package:simi/constants.dart';
import 'package:simi/screens/select_plan.dart';
import 'package:simi/screens/sign_in.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  bool hidePassword = true;
  void displayPassword() {
    setState(() {
      if (hidePassword == true) {
        hidePassword = false;
      } else {
        hidePassword = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: const Color(0xffD20001),
        title: Container(
          margin: EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(null),
              Image(
                  image: AssetImage("assets/images/app-logo.png"),
                  height: 60,
                  width: 60),
              Text(
                "Help",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffD20001),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.85,
              child: TextField(
                style: const TextStyle(color: Colors.white),
                keyboardType: TextInputType.name,
                decoration: kTextFieldDecoration.copyWith(
                  hintText: "First name",
                ),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.85,
              child: TextField(
                style: const TextStyle(color: Colors.white),
                keyboardType: TextInputType.name,
                decoration: kTextFieldDecoration.copyWith(
                  hintText: "Last name",
                ),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.85,
              child: TextField(
                style: const TextStyle(color: Colors.white),
                keyboardType: TextInputType.emailAddress,
                decoration: kTextFieldDecoration.copyWith(
                  hintText: "Email or phone number",
                ),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.85,
              child: TextField(
                style: const TextStyle(color: Colors.white),
                keyboardType: TextInputType.visiblePassword,
                obscureText: hidePassword,
                decoration: kTextFieldDecoration.copyWith(
                    hintText: "Password",
                    suffixIcon: InkWell(
                        onTap: () {
                          displayPassword();
                        },
                        child: Icon(
                          hidePassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Color(0xffFFFFFF),
                          size: 22,
                        ))),
              ),
            ),
            const SizedBox(height: 15),
            kReuseableTextButton(
              title: "SIGN UP",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const SelectPlan()));
              },
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account?",
                  style: TextStyle(color: Color(0xffFFFFFF), fontSize: 15),
                ),
                const SizedBox(width: 5),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const SignIn()));
                  },
                  child: const Text(
                    "SIGN IN",
                    style: TextStyle(
                        color: Color(0xffFFB71A),
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25.0),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  decoration: const BoxDecoration(color: Color(0xffFFFFFF)),
                  width: MediaQuery.of(context).size.width * 0.35,
                  height: 1),
              const SizedBox(width: 5),
              const Text(
                "OR",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 5),
              Container(
                  decoration: const BoxDecoration(color: Color(0xffFFFFFF)),
                  width: MediaQuery.of(context).size.width * 0.35,
                  height: 1),
            ]),
            const SizedBox(height: 30.0),
            const kIconTextButton(
                title: "Continue with Google",
                icon: "assets/images/google-logo.png"),
            const SizedBox(height: 15.0),
            const kIconTextButton(
                title: "Continue with Apple",
                icon: "assets/images/apple-logo.png"),
          ],
        ),
      ),
    ));
  }
}
