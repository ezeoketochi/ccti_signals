import 'package:cctia_signals/Screens/login/login.dart';
import 'package:cctia_signals/Screens/login/enter_code.dart';
import 'package:cctia_signals/Screens/login/reset_password.dart';
import 'package:cctia_signals/Screens/login/reset_successful.dart';
import 'package:cctia_signals/Screens/onboarding/onboarding.dart';
import 'package:cctia_signals/widgets/login_widgets.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CctiaSignals(),
    ),
  );
}

class CctiaSignals extends StatelessWidget {
  const CctiaSignals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: BodyPage(),
      ),
    );
  }
}

class BodyPage extends StatefulWidget {
  const BodyPage({
    Key? key,
  }) : super(key: key);

  @override
  State<BodyPage> createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
  void navigatetoOnboarding() async {
    await Future.delayed(
      const Duration(milliseconds: 1000),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) => OnBoarding()),
          ),
        );
      },
    );
  }

  @override
  void initState() {
    navigatetoOnboarding();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 30.0,
          right: 30,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Welcome",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Text(
              "To",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            Image.asset("lib/assets/images/Ellipse.png"),
            const Text(
              "CCTIA",
              style: TextStyle(
                color: Color(0xffC9AC61),
                fontSize: 60,
                fontWeight: FontWeight.w900,
              ),
            ),
            const Text(
              "For Your Crypto & CFT Education & Signals",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
