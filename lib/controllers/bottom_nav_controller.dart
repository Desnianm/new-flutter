import 'package:get/get.dart';

class BottomNavController extends GetxController {
  var currentIndex = 0.obs; // nilai index aktif (default: tab 0)

  void changePage(int index) {
    currentIndex.value = index;
  }
}
