import 'package:flutter/material.dart';

class CustomIconBar extends StatelessWidget {
  const CustomIconBar({
    super.key,
    required this.icon,
    required this.onTap
  });
  final IconData icon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color.fromRGBO(255, 255, 255, 0.1),
      ),
      width: 45,
      height: 45,
    
      child: Center(
        child: IconButton(
          onPressed: onTap,
          icon: Icon(icon),
          iconSize: 28,
        ),
      ),
    );
  }
}
