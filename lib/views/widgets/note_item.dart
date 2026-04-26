import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 24, left: 16, top: 16),
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            trailing: IconButton(
              iconSize: 30,
              onPressed: () {},
              icon: Icon(Icons.delete),
              color: const Color.fromARGB(255, 0, 0, 0),
            ),
            title: Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Text(
                "Flutter tips",
                style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontSize: 32,
                ),
              ),
            ),
            subtitle: Text(
              "Build your career with tharwat samy",
              style: TextStyle(
                fontSize: 22,
                color: const Color.fromRGBO(0, 0, 0, 0.5),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Text(
              "May 21,2026",
              style: TextStyle(color: const Color.fromRGBO(0, 0, 0, 0.5)),
            ),
          ),
        ],
      ),
    );
  }
}
