import 'package:bluestackapp/foundation/theme/colors.dart';
import 'package:bluestackapp/foundation/theme/spacing.dart';
import 'package:flutter/material.dart';

class StatsItem extends StatelessWidget {
  const StatsItem({
    Key? key,
    this.bottomLeft = 0,
    this.bottomRight = 0,
    this.topLeft = 0,
    this.topRight = 0,
    required this.bgColor1,
    required this.bgColor2,
    required this.titleText,
    required this.subTitleText,
    required this.trailingText,
  }) : super(key: key);
  final double topLeft;
  final double topRight;
  final double bottomLeft;
  final double bottomRight;
  final Color bgColor1;
  final Color bgColor2;
  final String titleText;
  final String subTitleText;
  final String trailingText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 3.3,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              bgColor2,
              bgColor1,
            ],
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(topLeft),
            topRight: Radius.circular(topRight),
            bottomLeft: Radius.circular(bottomLeft),
            bottomRight: Radius.circular(bottomRight),
          ),
        ),
        child: Column(
          children: [
            Text(
              titleText,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 17,
              ),
            ),
            SizedBox(
              height: Spacing.x025,
            ),
            Text(
              subTitleText,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 13,
              ),
            ),
            SizedBox(
              height: Spacing.x025,
            ),
            Text(
              trailingText,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
