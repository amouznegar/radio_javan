import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:radiojavan_app/controller/app_controller.dart';

class ConactUs extends StatelessWidget {
  ConactUs({super.key});

  int value = 0;

  AppController controller = Get.put(AppController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              value++;
              controller.counter.value=value;

              print('${controller.counter.value}');

            }, child: Text('+')),
            SizedBox(
              width: 20,
            ),
            Obx(()=>Text('counter ${controller.counter.value}')),
            SizedBox(
              width: 20,
            ),
            ElevatedButton(onPressed: () {

               value--;
               controller.counter.value=value;
              print('${controller.counter.value}');
            }, child: Text('-')),
          ],
        ),
      ),
    );
  }
}
