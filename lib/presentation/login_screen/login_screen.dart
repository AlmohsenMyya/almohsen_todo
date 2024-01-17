import 'controller/login_controller.dart';
import 'package:almohsen_todoapp/core/app_export.dart';
import 'package:almohsen_todoapp/core/utils/validation_functions.dart';
import 'package:almohsen_todoapp/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:almohsen_todoapp/widgets/app_bar/appbar_title.dart';
import 'package:almohsen_todoapp/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_todoapp/widgets/custom_elevated_button.dart';
import 'package:almohsen_todoapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  LoginScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 11.v),
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 32.h),
                        child: Column(children: [
                          _buildPageHeader(),
                          SizedBox(height: 21.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgLogoGray5001113x116,
                              height: 113.v,
                              width: 116.h),
                          SizedBox(height: 115.v),
                          CustomTextFormField(
                              controller: controller.emailController,
                              hintText: "lbl_email2".tr,
                              textInputType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "err_msg_please_enter_valid_email".tr;
                                }
                                return null;
                              },
                              borderDecoration: TextFormFieldStyleHelper
                                  .outlineOnPrimaryTL14),
                          SizedBox(height: 24.v),
                          CustomTextFormField(
                              controller: controller.passwordController,
                              hintText: "lbl_password".tr,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "err_msg_please_enter_valid_password"
                                      .tr;
                                }
                                return null;
                              },
                              obscureText: true,
                              borderDecoration: TextFormFieldStyleHelper
                                  .outlineOnPrimaryTL14),
                          SizedBox(height: 26.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtForgotPasswor();
                                  },
                                  child: Text("msg_forgot_password".tr,
                                      style: CustomTextStyles
                                          .labelLargeSecondaryContainerSemiBold))),
                          SizedBox(height: 23.v),
                          CustomElevatedButton(
                              text: "lbl_next".tr,
                              onPressed: () {
                                onTapNext();
                              }),
                          SizedBox(height: 33.v),
                          GestureDetector(
                              onTap: () {
                                onTapDonTHaveAnAccount();
                              },
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 1.v),
                                        child: Text(
                                            "msg_don_t_have_an_account".tr,
                                            style: theme.textTheme.labelLarge)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 8.h),
                                        child: Text("lbl_signup2".tr,
                                            style: CustomTextStyles
                                                .labelLargeSecondaryContainerSemiBold))
                                  ]))
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 32.h, top: 14.v, bottom: 17.v),
            onTap: () {
              onTapArrowLeft();
            }),
        actions: [
          AppbarTitle(
              text: "lbl_login".tr,
              margin: EdgeInsets.symmetric(horizontal: 48.h, vertical: 14.v))
        ]);
  }

  /// Section Widget
  Widget _buildPageHeader() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
          width: 221.h,
          margin: EdgeInsets.only(right: 89.h),
          child: Text("msg_this_is_your_community".tr,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.displaySmall!.copyWith(height: 1.18))),
      SizedBox(height: 1.v),
      Container(
          width: 282.h,
          margin: EdgeInsets.only(right: 28.h),
          child: Text("msg_our_community_is3".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.labelLarge!.copyWith(height: 1.67)))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the forgotPasswordScreen when the action is triggered.
  onTapTxtForgotPasswor() {
    Get.toNamed(
      AppRoutes.forgotPasswordScreen,
    );
  }

  /// Navigates to the signupScreen when the action is triggered.
  onTapNext() {
    Get.toNamed(
      AppRoutes.signupScreen,
    );
  }

  /// Navigates to the signupScreen when the action is triggered.
  onTapDonTHaveAnAccount() {
    Get.toNamed(
      AppRoutes.signupScreen,
    );
  }
}
