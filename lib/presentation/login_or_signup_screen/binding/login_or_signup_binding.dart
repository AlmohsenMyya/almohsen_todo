import '../controller/login_or_signup_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoginOrSignupScreen.
///
/// This class ensures that the LoginOrSignupController is created when the
/// LoginOrSignupScreen is first loaded.
class LoginOrSignupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginOrSignupController());
  }
}
