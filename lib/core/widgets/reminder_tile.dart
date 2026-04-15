import 'package:flutter/material.dart';

class ReminderTile extends StatelessWidget {
  final String medicine;
  final String time;
  const ReminderTile({super.key,required this.medicine,required this.time});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.alarm),
        title: Text(medicine),
        subtitle: Text("Time: $time"),
        trailing: PopupMenuButton<String>(
          onSelected: (value) {},
          itemBuilder: (context) => [
            const PopupMenuItem(
              value: "edit",
              child: Text("Edit"),
            ),
            const PopupMenuItem(
              value: "delete",
              child: Text("Delete"),
            ),
          ],
        ),
      ),
    );
  }
}