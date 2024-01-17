import '../controller/termsandconditions_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TermsandconditionsScreen.
///
/// This class ensures that the TermsandconditionsController is created when the
/// TermsandconditionsScreen is first loaded.
class TermsandconditionsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TermsandconditionsController());
  }
}
