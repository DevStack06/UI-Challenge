import 'package:bluestackapp/foundation/bs_icon/bs_icon.dart';
import 'package:bluestackapp/foundation/theme/colors.dart';
import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BSIcon(
          assetname: "game_tv_logo.png",
          bgColor: AppColor.pinkColor,
        ),
      ),
    );
  }
}
