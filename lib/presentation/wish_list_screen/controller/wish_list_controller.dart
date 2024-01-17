import 'package:almohsen_todoapp/core/app_export.dart';
import 'package:almohsen_todoapp/presentation/wish_list_screen/models/wish_list_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the WishListScreen.
///
/// This class manages the state of the WishListScreen, including the
/// current wishListModelObj
class WishListController extends GetxController {
  TextEditingController filesizeController = TextEditingController();

  Rx<WishListModel> wishListModelObj = WishListModel().obs;

  @override
  void onClose() {
    super.onClose();
    filesizeController.dispose();
  }
}
