import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'hello': 'Hello World',
      'login': 'Login',
      'register': 'Register',
    },
    'fa_IR': {
      'hello': 'سلام',
      'login': 'ورود کاربران',
      'register': 'ثبت نام',
    }
  };
}