import 'package:flutter/material.dart';
import 'package:medclock/core/widgets/medicine_tile.dart';

class PatientDashboardView extends StatelessWidget {
  const PatientDashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MedClock"),
        actions: [IconButton(icon: const Icon(Icons.person), onPressed: () {})],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Good Morning, Patient",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Today’s Schedule",
              style: TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 20),

            Card(
              elevation: 3,
              child: ListTile(
                leading: const Icon(Icons.alarm, color: Colors.blue),
                title: const Text("Next Dose"),
                subtitle: const Text("Paracetamol - 2 Tablets"),
                trailing: const Text("08:00 PM"),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Today's Medicines",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            Expanded(
              child: ListView(
                children: [
                  MedicineTile(
                    name: "Paracetamol",
                    dosage: "2 Tablets",
                    time: "08:00 AM",
                  ),
                  MedicineTile(
                    name: "Vitamin C",
                    dosage: "1 Tablet",
                    time: "02:00 PM",
                  ),
                  MedicineTile(
                    name: "Insulin",
                    dosage: "5 Units",
                    time: "08:00 PM",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Dashboard"),
          BottomNavigationBarItem(
            icon: Icon(Icons.medication),
            label: "Medicines",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.alarm), label: "Reminders"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
