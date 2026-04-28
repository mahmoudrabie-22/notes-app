import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: KPrimaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Center(
          child: Text(
            "Add",
            style: TextStyle(
              fontSize: 22,
              fontFamily: 'Poppins',
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
