import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQueryData.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      // here i can use size.width but i used double.infinity becuase they both same as far as i know
    );
  }
}
