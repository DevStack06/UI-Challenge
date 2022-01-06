import 'package:bluestackapp/feature/home_screen/home_screen.dart';
import 'package:bluestackapp/feature/landing/loading.dart';
import 'package:bluestackapp/feature/login/login.dart';
import 'package:bluestackapp/services/network_handler/network_handler.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final NetworkHandler _networkHandler = NetworkHandler();
  Widget currentPage = const Loading();
  @override
  void initState() {
    super.initState();
    checkLogin();
  }

  void checkLogin() async {
    String? token = await _networkHandler.getToken();
    if (token != null) {
      setState(() {
        currentPage = const HomeScreen();
      });
    } else {
      setState(() {
        currentPage = const Login();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return currentPage;
  }
}
