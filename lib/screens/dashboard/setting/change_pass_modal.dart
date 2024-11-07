


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';




changePassModal(BuildContext context ){


  showModalBottomSheet(
      elevation: 30,
      context: context,
      barrierColor:
      Color(0xff22326A).withOpacity(0.5),
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32.0),
            topRight: Radius.circular(32.0)),
      ),
      builder: (BuildContext context) {
        return SizedBox(
          width: Get.width,
          height: Get.height * 0.6,
          child: Center(
            child: Container(
              height: Get.height * 0.6,
              decoration: BoxDecoration(
                  color: Color(0xFFF3F6F9),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32.0),
                      topRight:
                      Radius.circular(32.0))),
              padding: EdgeInsets.only(
                  left: 20, right: 20, top: 40),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.center,
                  children: [



                  ],
                ),
              ),
            ),
          ),
        );
      });


}



