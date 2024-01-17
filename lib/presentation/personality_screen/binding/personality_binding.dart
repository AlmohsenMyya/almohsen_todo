import '../controller/personality_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PersonalityScreen.
///
/// This class ensures that the PersonalityController is created when the
/// PersonalityScreen is first loaded.
class PersonalityBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PersonalityController());
  }
}
