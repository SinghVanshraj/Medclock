import 'package:flutter/material.dart';
import 'package:medclock/core/widgets/reminder_tile.dart';

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
            ReminderTile(medicine: "Paracetamol", time: "08:00 AM"),
            ReminderTile(medicine: "Vitamin C", time: "02:00 PM"),
            ReminderTile(medicine: "Insulin", time: "08:00 PM"),
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
}