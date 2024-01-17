import 'package:almohsen_todoapp/presentation/adacana_screen/adacana_screen.dart';
import 'package:almohsen_todoapp/presentation/adacana_screen/binding/adacana_binding.dart';
import 'package:almohsen_todoapp/presentation/login_or_signup_screen/login_or_signup_screen.dart';
import 'package:almohsen_todoapp/presentation/login_or_signup_screen/binding/login_or_signup_binding.dart';
import 'package:almohsen_todoapp/presentation/signup_screen/signup_screen.dart';
import 'package:almohsen_todoapp/presentation/signup_screen/binding/signup_binding.dart';
import 'package:almohsen_todoapp/presentation/login_screen/login_screen.dart';
import 'package:almohsen_todoapp/presentation/login_screen/binding/login_binding.dart';
import 'package:almohsen_todoapp/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:almohsen_todoapp/presentation/forgot_password_screen/binding/forgot_password_binding.dart';
import 'package:almohsen_todoapp/presentation/home_screen/home_screen.dart';
import 'package:almohsen_todoapp/presentation/home_screen/binding/home_binding.dart';
import 'package:almohsen_todoapp/presentation/personality_screen/personality_screen.dart';
import 'package:almohsen_todoapp/presentation/personality_screen/binding/personality_binding.dart';
import 'package:almohsen_todoapp/presentation/work_today_screen/work_today_screen.dart';
import 'package:almohsen_todoapp/presentation/work_today_screen/binding/work_today_binding.dart';
import 'package:almohsen_todoapp/presentation/wish_list_screen/wish_list_screen.dart';
import 'package:almohsen_todoapp/presentation/wish_list_screen/binding/wish_list_binding.dart';
import 'package:almohsen_todoapp/presentation/settings_screen/settings_screen.dart';
import 'package:almohsen_todoapp/presentation/settings_screen/binding/settings_binding.dart';
import 'package:almohsen_todoapp/presentation/language_screen/language_screen.dart';
import 'package:almohsen_todoapp/presentation/language_screen/binding/language_binding.dart';
import 'package:almohsen_todoapp/presentation/termsandconditions_screen/termsandconditions_screen.dart';
import 'package:almohsen_todoapp/presentation/termsandconditions_screen/binding/termsandconditions_binding.dart';
import 'package:almohsen_todoapp/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:almohsen_todoapp/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String adacanaScreen = '/adacana_screen';

  static const String loginOrSignupScreen = '/login_or_signup_screen';

  static const String signupScreen = '/signup_screen';

  static const String loginScreen = '/login_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String homeScreen = '/home_screen';

  static const String personalityScreen = '/personality_screen';

  static const String workTodayScreen = '/work_today_screen';

  static const String wishListScreen = '/wish_list_screen';

  static const String settingsScreen = '/settings_screen';

  static const String languageScreen = '/language_screen';

  static const String termsandconditionsScreen = '/termsandconditions_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: adacanaScreen,
      page: () => AdacanaScreen(),
      bindings: [
        AdacanaBinding(),
      ],
    ),
    GetPage(
      name: loginOrSignupScreen,
      page: () => LoginOrSignupScreen(),
      bindings: [
        LoginOrSignupBinding(),
      ],
    ),
    GetPage(
      name: signupScreen,
      page: () => SignupScreen(),
      bindings: [
        SignupBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      bindings: [
        ForgotPasswordBinding(),
      ],
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: personalityScreen,
      page: () => PersonalityScreen(),
      bindings: [
        PersonalityBinding(),
      ],
    ),
    GetPage(
      name: workTodayScreen,
      page: () => WorkTodayScreen(),
      bindings: [
        WorkTodayBinding(),
      ],
    ),
    GetPage(
      name: wishListScreen,
      page: () => WishListScreen(),
      bindings: [
        WishListBinding(),
      ],
    ),
    GetPage(
      name: settingsScreen,
      page: () => SettingsScreen(),
      bindings: [
        SettingsBinding(),
      ],
    ),
    GetPage(
      name: languageScreen,
      page: () => LanguageScreen(),
      bindings: [
        LanguageBinding(),
      ],
    ),
    GetPage(
      name: termsandconditionsScreen,
      page: () => TermsandconditionsScreen(),
      bindings: [
        TermsandconditionsBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => AdacanaScreen(),
      bindings: [
        AdacanaBinding(),
      ],
    )
  ];
}
