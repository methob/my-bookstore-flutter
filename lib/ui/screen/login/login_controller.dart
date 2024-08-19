
import 'package:injectable/injectable.dart';

@Singleton()
class LoginController {

  String? validatePassword(String? password) {
    if (password?.isEmpty == true) {
      return "Please enter your password";
    } else {
      return null;
    }
  }
}