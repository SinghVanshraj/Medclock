import 'package:flutter/material.dart';

class MedicineTile extends StatelessWidget {
  final String name;
  final String dosage;
  final String time;
  const MedicineTile({
    super.key,
    required this.name,
    required this.dosage,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.medication),
        title: Text(name),
        subtitle: Text(dosage),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(time),
            const SizedBox(height: 4),
            const Text("Take", style: TextStyle(color: Colors.blue)),
          ],
        ),
      ),
    );
  }
}
