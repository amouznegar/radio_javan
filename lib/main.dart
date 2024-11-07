import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:radiojavan_app/screens/about/about_page.dart';
import 'package:radiojavan_app/screens/conact_us.dart';
import 'package:radiojavan_app/screens/dashboard/category/category_page.dart';
import 'package:radiojavan_app/screens/dashboard/dashoboard_page.dart';
import 'package:radiojavan_app/screens/dashboard/main/main_page.dart';
import 'package:radiojavan_app/screens/dashboard/setting/setting_page.dart';
import 'package:radiojavan_app/screens/splash/splash_screen.dart';
import 'package:radiojavan_app/service/localization/message.dart';

void main() async {
  await GetStorage.init();
  runApp(GetMaterialApp(
    initialRoute: '/splash',
    translations: Messages(),
    locale: Locale('fa', 'IR'),
    getPages: [

      GetPage(name: '/dashboard', page: ()=>DashoboardPage()),
      GetPage(name: '/splash', page: ()=>SplashScreen()),
      GetPage(name: '/main', page: ()=>MainPage()),
      GetPage(name: '/setting', page: ()=>SettingPage()),
      GetPage(name: '/category', page: ()=>CategoryPage()),
      GetPage(name: '/about', page: ()=>AboutPage()),
      GetPage(name: '/contact', page: ()=>ConactUs()),

    ],

  ));
}
