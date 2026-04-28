import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_icon_bar.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.icon,
    required this.title
  });
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
        Spacer(),
        CustomIconBar(icon: icon,),
      ],
    );
  }
}
