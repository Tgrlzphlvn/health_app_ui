import 'package:flutter/material.dart';
import 'package:health_ux_kit/constants/project_colors.dart';
import 'package:health_ux_kit/constants/project_strings.dart';
import 'package:health_ux_kit/constants/project_texts.dart';
import 'package:health_ux_kit/widgets/custom_elevated_button.dart';
import 'package:health_ux_kit/widgets/custom_textfield.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView>
    with ProjectStrings, ProjectColors, ProjectTexts {
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: transparent,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: loginTextInset,
              child: login,
            ),
            _loginPageText(),
            CustomTextField(
              hintText: emailText,
              obscureText: false,
            ),
            CustomTextField(
              hintText: passwordText,
              obscureText: _isVisible,
              suffixIcon: IconButton(
                icon: _isVisible
                    ? Icon(
                        Icons.visibility,
                        color: black,
                      )
                    : Icon(
                        Icons.visibility_off,
                        color: black,
                      ),
                onPressed: () {
                  _changeIcon();
                },
              ),
            ),
            CustomElevatedButton(),
            TextButton(
              onPressed: () {},
              child: Text(
                signUpText,
                style: TextStyle(color: black),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding _loginPageText() {
    return Padding(
      padding: loadingInset,
      child: SizedBox(
        width: 250,
        child: Text(
          loginDetail,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: helvetica,
              fontWeight: FontWeight.w600,
              color: floatingGreen,
              fontSize: 18,
              wordSpacing: 1.9),
        ),
      ),
    );
  }

  void _changeIcon() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }
}
