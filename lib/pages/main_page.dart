import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/bottom_nav_controller.dart';
import 'kalkulator_pages.dart';
import 'football_page.dart';
import 'profile_page.dart';

class MainPage extends StatelessWidget {
  final BottomNavController controller = Get.put(BottomNavController());

  final List<Widget> pages = [
    CalculatorPages(),
    FootballPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: pages[controller.currentIndex.value], // ganti page sesuai index
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.currentIndex.value,
            onTap: controller.changePage, // ubah tab
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.calculate),
                label: "Kalkulator",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.sports_soccer),
                label: "Football",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
              ),
            ],
          ),
        ));
  }
}
