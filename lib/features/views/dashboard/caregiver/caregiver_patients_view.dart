import 'package:flutter/material.dart';

class CaregiverPatientsView extends StatelessWidget {
  const CaregiverPatientsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Patients"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            /// Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: "Search patients",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            const SizedBox(height: 16),

            /// Patient List
            Expanded(
              child: ListView(
                children: [
                  patientTile(
                    name: "Ravi Kumar",
                    subtitle: "2 missed doses today",
                    statusColor: Colors.red,
                  ),
                  patientTile(
                    name: "Anita Sharma",
                    subtitle: "All doses taken",
                    statusColor: Colors.green,
                  ),
                  patientTile(
                    name: "Rahul Singh",
                    subtitle: "1 upcoming reminder",
                    statusColor: Colors.orange,
                  ),
                  patientTile(
                    name: "Priya Verma",
                    subtitle: "Low medicine stock",
                    statusColor: Colors.blue,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      /// Add / Link Patient Button
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.person_add),
      ),
    );
  }

  Widget patientTile({
    required String name,
    required String subtitle,
    required Color statusColor,
  }) {
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