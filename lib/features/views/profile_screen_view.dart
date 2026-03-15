import 'package:flutter/material.dart';
import 'package:medclock/core/widgets/profile_tile.dart';

class ProfileScreenView extends StatefulWidget {
  const ProfileScreenView({super.key});

  @override
  State<ProfileScreenView> createState() => _ProfileScreenViewState();
}

class _ProfileScreenViewState extends State<ProfileScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const CircleAvatar(radius: 45, child: Icon(Icons.person, size: 45)),

            const SizedBox(height: 12),

            const Text(
              "Patient Name",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const Text(
              "patient@email.com",
              style: TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 30),

            ProfileTile(icon: Icons.edit, title: "Edit Profile"),
            ProfileTile(icon: Icons.medication, title: "My Medicines"),
            ProfileTile(icon: Icons.history, title: "Dose History"),
            ProfileTile(icon: Icons.notifications, title:  "Reminder Settings"),
            ProfileTile(icon: Icons.info, title:  "About MedClock"),

            const Spacer(),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.logout),
                label: const Text("Logout"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
