import 'package:bluestackapp/services/network_handler/network_handler.dart';
import 'package:flutter/material.dart';
import 'package:bluestackapp/feature/home_screen/home_screen.dart';
import 'package:bluestackapp/foundation/bs_icon/bs_icon.dart';
import 'package:bluestackapp/foundation/bs_solid_button/bs_solid_button.dart';
import 'package:bluestackapp/foundation/bs_text_field/bs_text_field.dart';
import 'package:bluestackapp/foundation/theme/colors.dart';
import 'package:bluestackapp/foundation/theme/spacing.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool enableBtn = false;
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
            onChanged: () =>
                setState(() => enableBtn = _formKey.currentState!.validate()),
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
                  height: Spacing.x3p5,
                ),
                BSTextField(
                  label: "Username*",
                  prefixIcon: Icons.person,
                  textEditingController: usernameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a valid username';
                    } else if (value.length < 3) {
                      return 'Username length should be minimum 3';
                    } else if (value.length > 11) {
                      return 'Username length should be maximum 11';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: Spacing.x2p5,
                ),
                BSTextField(
                  label: "Password*",
                  prefixIcon: Icons.lock,
                  textEditingController: passwordController,
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a valid password';
                    } else if (value.length < 3) {
                      return 'Password length should be minimum 3';
                    } else if (value.length > 11) {
                      return 'Password length should be maximum 11';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: Spacing.x5,
                ),
                BSSolidButton(
                  text: "Login",
                  onPressed: onLogin,
                  enabled: enableBtn,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onLogin() async {
    if ((usernameController.text == "9898989898" &&
            passwordController.text == "password123") ||
        (usernameController.text == "9876543210" &&
            passwordController.text == "password123")) {
      NetworkHandler.storeToken();
      Get.off(const HomeScreen());
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Invalid username or passord')),
      );
    }
  }
}
