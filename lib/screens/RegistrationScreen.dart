import 'package:basecode/screens/LoginScreen.dart';
import 'package:basecode/widgets/CustomTextFormField.dart';
import 'package:basecode/widgets/PasswordField.dart';
import 'package:basecode/widgets/PrimaryButton.dart';
import 'package:basecode/widgets/SecondaryButton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'ForgotPasswordScreen.dart';

class RegistrationScreen extends StatefulWidget {
  static String routeName = "/registration";
  @override
  RegistrationScreenState createState() => RegistrationScreenState();
}

class RegistrationScreenState extends State<RegistrationScreen> {
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomTextFormField(
                      labelText: "First Name",
                      hintText:
                          "First Name must have a minimum of 4 characters.",
                      iconData: FontAwesomeIcons.user,
                      controller: TextEditingController()),
                  SizedBox(
                    height: 20.0,
                  ),
                  CustomTextFormField(
                      labelText: "Last Name",
                      hintText:
                          "First Name must have a minimum of 4 characters.",
                      iconData: FontAwesomeIcons.user,
                      controller: TextEditingController()),
                  SizedBox(
                    height: 20.0,
                  ),
                  CustomTextFormField(
                      labelText: "Email",
                      hintText: "Enter a valid email.",
                      iconData: FontAwesomeIcons.solidEnvelope,
                      controller: TextEditingController()),
                  SizedBox(
                    height: 20.0,
                  ),
                  PasswordField(
                      obscureText: _obscurePassword,
                      onTap: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                      labelText: "Password",
                      hintText: "Enter your password",
                      controller: TextEditingController()),
                  SizedBox(
                    height: 20.0,
                  ),
                  PasswordField(
                      obscureText: _obscureConfirmPassword,
                      onTap: () {
                        setState(() {
                          _obscureConfirmPassword = !_obscureConfirmPassword;
                        });
                      },
                      labelText: "Confirm Password",
                      hintText: "Your passwords must match.",
                      controller: TextEditingController()),
                  SizedBox(
                    height: 20.0,
                  ),
                  PrimaryButton(
                      text: "Register",
                      iconData: FontAwesomeIcons.solidFolder,
                      onPress: () {
                        print("Register button");
                      }),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SecondaryButton(
                          text: "Already have an account? Login",
                          onPress: () {
                            Get.offNamed(LoginScreen.routeName);
                          }),
                      SecondaryButton(
                          text: "Forgot Password?",
                          onPress: () {
                            Get.toNamed(ForgotPasswordScreen.routeName);
                          }),
                    ],
                  ),
                ],
              )),
            ),
          ),
        ),
      ),
    );
  }
}
