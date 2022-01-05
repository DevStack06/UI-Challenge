import 'package:bluestackapp/foundation/bs_icon/bs_icon.dart';
import 'package:bluestackapp/foundation/bs_solid_button/bs_solid_button.dart';
import 'package:bluestackapp/foundation/bs_text_field/bs_text_field.dart';
import 'package:bluestackapp/foundation/theme/colors.dart';
import 'package:bluestackapp/foundation/theme/spacing.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldBGColor,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const BSIcon(
                  assetname: "game_tv_logo.png",
                  bgColor: Colors.black,
                  size: 70,
                ),
                SizedBox(
                  height: Spacing.x5,
                ),
                const BSTextField(
                  label: "Username*",
                ),
                SizedBox(
                  height: Spacing.x3,
                ),
                const BSTextField(label: "Password*"),
                SizedBox(
                  height: Spacing.x5,
                ),
                const BSSolidButton(
                  text: "Login",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
