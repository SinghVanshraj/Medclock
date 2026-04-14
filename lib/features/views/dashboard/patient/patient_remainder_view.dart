import 'package:flutter/material.dart';

class PatientRemainderView extends StatelessWidget {
  const PatientRemainderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reminders"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            reminderTile("Paracetamol", "08:00 AM"),
            reminderTile("Vitamin C", "02:00 PM"),
            reminderTile("Insulin", "08:00 PM"),
          ],
        ),
      ),

      /// Add Reminder Button
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget reminderTile(String medicine, String time) {
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