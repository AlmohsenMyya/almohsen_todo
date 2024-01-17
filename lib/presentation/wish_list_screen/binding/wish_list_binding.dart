import '../controller/wish_list_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WishListScreen.
///
/// This class ensures that the WishListController is created when the
/// WishListScreen is first loaded.
class WishListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WishListController());
  }
}
