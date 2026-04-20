import 'package:flutter/material.dart';

class PatientTile extends StatelessWidget {
  final String name;
  final String status;
  const PatientTile({super.key, required this.name, required this.status});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const CircleAvatar(
          child: Icon(Icons.person),
        ),
        title: Text(name),
        subtitle: Text(status),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {},
      ),
    );
  }
}