import 'controller/wish_list_controller.dart';
import 'package:almohsen_todoapp/core/app_export.dart';
import 'package:almohsen_todoapp/widgets/custom_elevated_button.dart';
import 'package:almohsen_todoapp/widgets/custom_icon_button.dart';
import 'package:almohsen_todoapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class WishListScreen extends GetWidget<WishListController> {
  const WishListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 43.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomIconButton(
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          padding: EdgeInsets.all(6.h),
                          onTap: () {
                            onTapBtnArrowLeft();
                          },
                          child: CustomImageView(
                              imagePath: ImageConstant.imgArrowLeft)),
                      SizedBox(height: 75.v),
                      _buildPageHeader(),
                      SizedBox(height: 85.v),
                      Text("lbl_task_todo".tr,
                          style: CustomTextStyles.labelLargeOnPrimary_1),
                      SizedBox(height: 12.v),
                      _buildDateField(
                          calendarImage:
                              ImageConstant.imgCalendarOnprimarycontainer,
                          dateText: "msg_create_action_mobile".tr),
                      SizedBox(height: 18.v),
                      Text("lbl_date".tr,
                          style: CustomTextStyles.labelLargeOnPrimary_1),
                      SizedBox(height: 12.v),
                      _buildDateField(
                          calendarImage: ImageConstant.imgCalendar,
                          dateText: "lbl_tt_mm_yy".tr),
                      SizedBox(height: 18.v),
                      Text("lbl_attachments".tr,
                          style: CustomTextStyles.labelLargeOnPrimary_1),
                      SizedBox(height: 12.v),
                      CustomTextFormField(
                          controller: controller.filesizeController,
                          hintText: "lbl_maximum_10_mb".tr,
                          hintStyle: CustomTextStyles.titleSmallOnPrimary,
                          textInputAction: TextInputAction.done,
                          prefix: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 18.h, vertical: 17.v),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgClose,
                                  height: 23.v,
                                  width: 24.h)),
                          prefixConstraints: BoxConstraints(maxHeight: 58.v),
                          contentPadding: EdgeInsets.only(
                              top: 18.v, right: 30.h, bottom: 18.v),
                          borderDecoration:
                              TextFormFieldStyleHelper.outlineOnPrimaryTL14),
                      SizedBox(height: 50.v),
                      CustomElevatedButton(
                          text: "msg_make_a_wish_list".tr,
                          buttonTextStyle:
                              CustomTextStyles.titleMediumWhiteA700,
                          onPressed: () {
                            onTapMakeAWishList();
                          }),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildPageHeader() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_make_a_wish_list".tr, style: theme.textTheme.headlineMedium),
      SizedBox(height: 11.v),
      Text("msg_make_your_job_easier".tr, style: theme.textTheme.labelLarge)
    ]);
  }

  /// Common widget
  Widget _buildDateField({
    required String calendarImage,
    required String dateText,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 16.v),
        decoration: AppDecoration.outlineOnPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder14),
        child: Row(children: [
          CustomImageView(imagePath: calendarImage, height: 23.v, width: 24.h),
          Padding(
              padding: EdgeInsets.only(left: 18.h),
              child: Text(dateText,
                  style: CustomTextStyles.titleSmallOnPrimary.copyWith(
                      color: theme.colorScheme.onPrimary.withOpacity(0.6))))
        ]));
  }

  /// Navigates to the previous screen.
  onTapBtnArrowLeft() {
    Get.back();
  }

  /// Navigates to the signupScreen when the action is triggered.
  onTapMakeAWishList() {
    Get.toNamed(
      AppRoutes.signupScreen,
    );
  }
}
