import 'package:get/get.dart';
import '../pages/kalkulator_pages.dart';
import '../pages/football_page.dart';
import '../pages/edit_player.dart';
import '../pages/profile_page.dart';
import '../pages/main_page.dart';
import 'routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.calculator, page: () => CalculatorPages()),
    GetPage(name: AppRoutes.football, page: () => FootballPage()),
    GetPage(name: AppRoutes.editPlayer, page: () => EditPlayerPage()),
    GetPage(name: AppRoutes.profile, page: () => ProfilePage()),
    GetPage(name: AppRoutes.main, page: () => MainPage()),
  ];
}
