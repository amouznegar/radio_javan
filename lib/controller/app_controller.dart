
import 'package:get/get.dart';

class AppController extends GetxController {


  var counter = 0.obs;
  increment()=> counter++;
  decrement()=> counter--;

}