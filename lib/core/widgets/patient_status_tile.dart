import 'package:flutter/material.dart';

class PatientStatusTile extends StatelessWidget {
    final String name;
    final String subtitle;
    final Color statusColor;

  const PatientStatusTile({super.key, required this.name,required this.subtitle,required this.statusColor});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: statusColor.withOpacity(0.12),
          child: Icon(
            Icons.person,
            color: statusColor,
          ),
        ),
        title: Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitle),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 16,
        ),
        onTap: () {},
      ),
    );
  }
}