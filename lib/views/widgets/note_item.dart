import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key,required this.item});
  final NoteModel item;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EditNoteView.id);
      },
      child: Container(
        padding: EdgeInsets.only(bottom: 24, left: 16, top: 16),
        decoration: BoxDecoration(
          color: Color(item.color),
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
                  item.title,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontSize: 32,
                  ),
                ),
              ),
              subtitle: Text(
                item.subTitle,
                style: TextStyle(
                  fontSize: 22,
                  color: const Color.fromRGBO(0, 0, 0, 0.5),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Text(
                item.date,
                style: TextStyle(color: const Color.fromRGBO(0, 0, 0, 0.5)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
