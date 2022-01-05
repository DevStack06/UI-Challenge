import 'package:flutter/material.dart';

class BSIcon extends StatelessWidget {
  const BSIcon({Key? key, required this.assetname, this.bgColor, this.size})
      : super(key: key);
  final String assetname;
  final Color? bgColor;
  final double? size;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/$assetname",
      color: bgColor,
      height: size,
    );
  }
}
