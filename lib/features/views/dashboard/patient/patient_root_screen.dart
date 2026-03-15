import 'package:flutter/material.dart';
import 'package:medclock/features/views/dashboard/patient/patient_dashboard_view.dart';
import 'package:medclock/features/views/profile_screen_view.dart';

class PatientRootScreen extends StatefulWidget {
  const PatientRootScreen({super.key});

  @override
  State<PatientRootScreen> createState() => _PatientRootScreenState();
}

class _PatientRootScreenState extends State<PatientRootScreen> {
  int _currentIndex = 0;
  final List<Widget> _list = [
    PatientDashboardView(),
    Placeholder(),
    Placeholder(),
    ProfileScreenView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
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
