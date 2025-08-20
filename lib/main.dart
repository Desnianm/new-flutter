import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routes/pages.dart';
import 'routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.main, // mulai dari bottom nav
      getPages: AppPages.pages,
    );
  }
}
