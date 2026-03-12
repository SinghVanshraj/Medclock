import 'package:flutter/material.dart';

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
                  medicineTile("Paracetamol", "2 Tablets", "08:00 AM"),
                  medicineTile("Vitamin C", "1 Tablet", "02:00 PM"),
                  medicineTile("Insulin", "5 Units", "08:00 PM"),
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

  Widget medicineTile(String name, String dosage, String time) {
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
