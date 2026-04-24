import 'package:flutter/material.dart';

class CustomIconBar extends StatelessWidget {
  const CustomIconBar({
    super.key,
  });

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
          onPressed: () {},
          icon: Icon(Icons.search),
          iconSize: 28,
        ),
      ),
    );
  }
}
