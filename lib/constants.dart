import 'package:flutter/material.dart';

const kTextFieldDecoration = InputDecoration(
  fillColor: Color(0xff0B1C32),
  filled: true,
  hintText: 'Enter a value',
  hintStyle: TextStyle(
      color: Color(0xffFFFFFF), fontSize: 17, fontWeight: FontWeight.w400),
  suffixStyle: TextStyle(
      color: Color(0xffFFFFFF), fontSize: 17, fontWeight: FontWeight.w400),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(7.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(7.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(7.0)),
  ),
);

class kReuseableTextButton extends StatelessWidget {
  const kReuseableTextButton({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);
  final String title;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: const Color(0xff0B1C32),
        fixedSize: Size(MediaQuery.of(context).size.width * 0.85, 50),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
      onPressed: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 7),
        child: Text(
          title,
          style: const TextStyle(
              color: Color(0xffFFFFFF),
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class kIconTextButton extends StatelessWidget {
  const kIconTextButton({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);
  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: const Color(0xff0B1C32),
        fixedSize: Size(MediaQuery.of(context).size.width * 0.85, 50),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
      onPressed: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 7),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(image: AssetImage(icon), width: 60),
            const SizedBox(width: 40),
            Text(
              title,
              style: const TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 17,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
