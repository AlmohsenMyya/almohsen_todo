import '../controller/language_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LanguageScreen.
///
/// This class ensures that the LanguageController is created when the
/// LanguageScreen is first loaded.
class LanguageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LanguageController());
  }
}
