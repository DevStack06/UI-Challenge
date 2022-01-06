import 'package:bluestackapp/foundation/theme/colors.dart';
import 'package:flutter/material.dart';

class BSTextField extends StatelessWidget {
  const BSTextField({
    Key? key,
    required this.label,
    this.prefixIcon,
    required this.textEditingController,
    this.validator,
    this.obscureText = false,
  }) : super(key: key);
  final String label;
  final IconData? prefixIcon;
  final TextEditingController textEditingController;
  final String? Function(String? value)? validator;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: textEditingController,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 15,
      ),
      validator: validator,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(
          color: Colors.black54,
          fontSize: 15,
        ),
        prefixIcon: Icon(
          prefixIcon,
          size: 23,
          color: AppColor.pinkColor,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            width: 1,
            color: Colors.grey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            width: 1.5,
            color: Colors.black54,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            width: 1.5,
            color: Colors.red,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            width: 1.5,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
