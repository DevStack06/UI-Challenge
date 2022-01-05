import 'package:bluestackapp/foundation/theme/colors.dart';
import 'package:flutter/material.dart';

class BSSolidButton extends StatelessWidget {
  const BSSolidButton({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(AppColor.pinkColor),
        textStyle: MaterialStateProperty.all(
          const TextStyle(
            fontSize: 12.5,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 48,
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
    );
  }
}
