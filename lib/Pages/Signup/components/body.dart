import 'package:flutter/material.dart';
import 'package:flutter_login_sign_up/Pages/Signup/components/background.dart';
import 'package:flutter_login_sign_up/Pages/Signup/components/or_divider.dart';
import 'package:flutter_login_sign_up/Pages/Signup/components/social_media_icon_wrapper.dart';
import 'package:flutter_svg/svg.dart';

import '../../../components/already_have_an_account_acheck.dart';
import '../../../components/rounded_button.dart';
import '../../../components/rounded_input_field.dart';
import '../../../components/rounded_password_field.dart';
import '../../Login/login_page.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "SIGN UP",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * .03),
          SvgPicture.asset(
            "assets/icons/signup.svg",
            height: size.height * .35,
          ),
          RoundedInputField(
            hintText: "Your E-mail",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "SIGN UP",
            press: () {},
          ),
          SizedBox(height: size.height * .03),
          AlreadyHaveAnAccountCheck(
            login: false,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginPage();
                  },
                ),
              );
            },
          ),
          OrDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SocialMediaIconWrapper(
                iconSrc: "assets/icons/facebook.svg",
                press: () {},
              ),
              SocialMediaIconWrapper(
                iconSrc: "assets/icons/twitter.svg",
                press: () {},
              ),
              SocialMediaIconWrapper(
                iconSrc: "assets/icons/google-plus.svg",
                press: () {},
              ),
            ],
          )
        ],
      ),
    ));
  }
}
