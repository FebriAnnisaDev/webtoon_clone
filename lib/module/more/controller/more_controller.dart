import 'package:get/get.dart';
import '../view/more_view.dart';

class MoreController extends GetxController {
  MoreView? view;

  @override  
  void onClose() {}

  var userCoins = 0.obs;

  void addCoins(int coinsAdded) {
    userCoins += coinsAdded;
  }
}
