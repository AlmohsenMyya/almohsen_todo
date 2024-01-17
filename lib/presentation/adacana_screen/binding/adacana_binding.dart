import '../controller/adacana_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AdacanaScreen.
///
/// This class ensures that the AdacanaController is created when the
/// AdacanaScreen is first loaded.
class AdacanaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AdacanaController());
  }
}
