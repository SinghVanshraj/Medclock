import 'package:flutter/material.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dose History")),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ListTile(
            leading: Icon(Icons.check_circle, color: Colors.green),
            title: Text("Paracetamol"),
            subtitle: Text("Taken • Today 08:00 AM"),
          ),
          ListTile(
            leading: Icon(Icons.cancel, color: Colors.red),
            title: Text("Vitamin C"),
            subtitle: Text("Missed • Today 02:00 PM"),
          ),
        ],
      ),
    );
  }
}