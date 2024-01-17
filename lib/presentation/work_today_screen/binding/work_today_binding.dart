import '../controller/work_today_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WorkTodayScreen.
///
/// This class ensures that the WorkTodayController is created when the
/// WorkTodayScreen is first loaded.
class WorkTodayBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WorkTodayController());
  }
}
