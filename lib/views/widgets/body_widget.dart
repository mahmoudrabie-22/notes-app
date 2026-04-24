import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_icon_bar.dart';

class BodyWiget extends StatelessWidget {
  const BodyWiget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SizedBox(height: 30),
          Row(
            children: [
              Text("Notes", style: TextStyle(fontSize: 28)),
              Spacer(),
              CustomIconBar(),
            ],
          ),
        ],
      ),
    );
  }
}

