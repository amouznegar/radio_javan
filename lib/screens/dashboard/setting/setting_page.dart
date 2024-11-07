
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:radiojavan_app/screens/dashboard/setting/change_pass_modal.dart';
import 'package:radiojavan_app/screens/dashboard/setting/subsribe_modal.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {

  double fontSize = 12.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () async {
                SharedPreferences pref = await SharedPreferences.getInstance();

                 await pref.setInt("FontSize", 14);

                int font = pref.getInt("FontSize") ?? 12;

                print('font $font');

                setState(() {
                  fontSize =  font.toDouble();
                });

                final box = GetStorage();
                box.write('version', 'GetX is the best');

              print('version is   ${ box.read('version')}') ;

             // Get.snackbar('Save', 'Font is saved', snackPosition: SnackPosition.BOTTOM);

              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Save Data')));


              },
              child: Text('Save')),

            Text('login'.tr , style: TextStyle(
              fontSize: fontSize
            ),),

          ElevatedButton(onPressed: (){



           // changePassModal(context);

         //   subscribeModal(context);

            Get.toNamed('/contact');


          }, child: Text('Contact us'))


        ],
      ),
    );
  }
}
