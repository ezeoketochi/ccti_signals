import 'package:cctia_signals/Screens/onboarding/onboarding.dart';
import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  const LoginTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: InputBorder.none,
        hintText: "Email",
        label: Icon(Icons.email),
        suffix: Icon(
          Icons.keyboard_arrow_right_outlined,
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  LoginButton({required this.text, this.function, Key? key}) : super(key: key);

  final String text;
  void Function()? function;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: function,
      style: TextButton.styleFrom(
        backgroundColor: const Color(0xffDFC87C),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 8.0,
          right: 8.0,
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
