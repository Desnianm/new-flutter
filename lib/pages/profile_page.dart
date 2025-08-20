import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Foto profile
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("assets/profile.jpeg"),
            ),
            SizedBox(height: 16),

            Text(
              "Desnian Danis Naulana",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "Panggilan: Danis",
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
            SizedBox(height: 20),

            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    buildInfoRow("Kelas", "XI PPLG 2"),
                    Divider(),
                    buildInfoRow("Absen", "11"),
                    Divider(),
                    buildInfoRow("Email", "mdesnian@gmail.com"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget reusable biar rapi
  Widget buildInfoRow(String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
        Text(value,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
      ],
    );
  }
}
