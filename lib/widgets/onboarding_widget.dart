import 'package:cctia_signals/Screens/login/login.dart';
import 'package:flutter/material.dart';

class OnBoardingWidget extends StatelessWidget {
  const OnBoardingWidget(
      {required this.title, required this.note, required this.index, Key? key})
      : super(key: key);

  final String title;
  final String note;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                note,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 250,
                child: Center(
                  child: Image.asset("lib/assets/images/onboarding$index.png"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) => const LoginPage()),
          ),
        );
      },
      style: TextButton.styleFrom(
        backgroundColor: const Color(0xffC9AC61),
        minimumSize:
            const Size.fromHeight(50), // to give the TB, an extended width
      ),
      child: Text(text,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          )),
    );
  }
}
