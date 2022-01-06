import 'package:bluestackapp/foundation/theme/colors.dart';
import 'package:flutter/material.dart';

class BSSolidButton extends StatelessWidget {
  const BSSolidButton(
      {Key? key,
      required this.text,
      required this.onPressed,
      required this.enabled})
      : super(key: key);
  final String text;
  final Function() onPressed;
  final bool enabled;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: enabled ? onPressed : null,
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(2),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(
            enabled ? AppColor.pinkColor : Colors.grey),
        textStyle: MaterialStateProperty.all(
          const TextStyle(
            fontSize: 12.5,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 55,
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
