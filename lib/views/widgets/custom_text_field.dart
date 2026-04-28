import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.hintText, this.maxLines});
  final String? hintText;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines ?? 1,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: kPrimaryColor),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
