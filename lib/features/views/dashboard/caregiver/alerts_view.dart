import 'package:flutter/material.dart';

class AlertsView extends StatelessWidget {
  const AlertsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alerts"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            alertTile(
              icon: Icons.warning_amber_rounded,
              title: "Missed Dose",
              subtitle: "Ravi Kumar missed Paracetamol at 02:00 PM",
              time: "5 min ago",
              iconColor: Colors.red,
            ),
            alertTile(
              icon: Icons.medication,
              title: "Low Stock",
              subtitle: "Vitamin C has only 3 tablets remaining",
              time: "20 min ago",
              iconColor: Colors.orange,
            ),
            alertTile(
              icon: Icons.access_time,
              title: "Upcoming Dose",
              subtitle: "Insulin scheduled at 08:00 PM",
              time: "Today",
              iconColor: Colors.blue,
            ),
            alertTile(
              icon: Icons.check_circle,
              title: "Dose Taken",
              subtitle: "Anita Sharma marked medicine as taken",
              time: "Today",
              iconColor: Colors.green,
            ),
          ],
        ),
      ),
    );
  }

  Widget alertTile({
    required IconData icon,
    required String title,
    required String subtitle,
    required String time,
    required Color iconColor,
  }) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: iconColor.withOpacity(0.12),
          child: Icon(icon, color: iconColor),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitle),
        trailing: Text(
          time,
          style: const TextStyle(fontSize: 12, color: Colors.grey),
        ),
        onTap: () {},
      ),
    );
  }
}