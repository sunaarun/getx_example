
import 'package:get/get.dart';

class MyController extends GetxController{

  int counter = 0;

  void increment(){
    counter++;
    update();
  }

}