import 'package:flutter/material.dart';
import 'package:medclock/core/widgets/patient_status_tile.dart';

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
                  PatientStatusTile(
                    name: "Ravi Kumar",
                    subtitle: "2 missed doses today",
                    statusColor: Colors.red,
                  ),
                  PatientStatusTile(
                    name: "Anita Sharma",
                    subtitle: "All doses taken",
                    statusColor: Colors.green,
                  ),
                  PatientStatusTile(
                    name: "Rahul Singh",
                    subtitle: "1 upcoming reminder",
                    statusColor: Colors.orange,
                  ),
                  PatientStatusTile(
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

  
}