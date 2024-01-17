import 'controller/login_or_signup_controller.dart';
import 'package:almohsen_todoapp/core/app_export.dart';
import 'package:almohsen_todoapp/widgets/custom_elevated_button.dart';
import 'package:almohsen_todoapp/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class LoginOrSignupScreen extends GetWidget<LoginOrSignupController> {
  const LoginOrSignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray5001,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 39.v),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.only(left: 17.h),
                      child: CustomIconButton(
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          padding: EdgeInsets.all(6.h),
                          alignment: Alignment.centerLeft,
                          onTap: () {
                            onTapBtnArrowLeft();
                          },
                          child: CustomImageView(
                              imagePath: ImageConstant.imgArrowLeft))),
                  SizedBox(height: 41.v),
                  _buildPageHeader(),
                  SizedBox(height: 30.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgLogoGray5001,
                      height: 105.v,
                      width: 117.h),
                  SizedBox(height: 33.v),
                  Text("lbl_get_in_through".tr,
                      style: theme.textTheme.titleMedium),
                  SizedBox(height: 33.v),
                  CustomElevatedButton(
                      text: "lbl_sign_up".tr,
                      onPressed: () {
                        onTapSignUp();
                      }),
                  SizedBox(height: 14.v),
                  CustomElevatedButton(
                      text: "lbl_login".tr,
                      buttonStyle: CustomButtonStyles.fillDeepOrange,
                      buttonTextStyle:
                          CustomTextStyles.titleSmallSecondaryContainer,
                      onPressed: () {
                        onTapLogin();
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildPageHeader() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(
          width: 208.h,
          child: Text("msg_welcome_to_our_community".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.displaySmall!.copyWith(height: 1.18))),
      SizedBox(height: 2.v),
      Container(
          width: 281.h,
          margin: EdgeInsets.only(right: 29.h),
          child: Text("msg_our_community_is".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall!.copyWith(height: 1.67)))
    ]);
  }

  /// Navigates to the previous screen.
  onTapBtnArrowLeft() {
    Get.back();
  }

  /// Navigates to the signupScreen when the action is triggered.
  onTapSignUp() {
    Get.toNamed(
      AppRoutes.signupScreen,
    );
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapLogin() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }
}
