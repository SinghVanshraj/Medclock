import 'package:flutter/material.dart';

class CaregiverDashboardView extends StatelessWidget {
  const CaregiverDashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Caregiver Dashboard"),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// Greeting
            const Text(
              "Hello, Caregiver",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Monitor your patients",
              style: TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 20),

            /// Alert Section
            Card(
              color: Colors.red.shade50,
              child: ListTile(
                leading: const Icon(Icons.warning, color: Colors.red),
                title: const Text("Missed Dose Alert"),
                subtitle: const Text("Ravi missed his 2:00 PM medicine"),
              ),
            ),

            const SizedBox(height: 20),

            /// Patient List Title
            const Text(
              "Your Patients",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            /// Patient List
            Expanded(
              child: ListView(
                children: [
                  patientTile("Ravi Kumar", "2 doses missed today"),
                  patientTile("Anita Sharma", "All doses taken"),
                  patientTile("Rahul Singh", "1 upcoming dose"),
                ],
              ),
            ),
          ],
        ),
      ),
}