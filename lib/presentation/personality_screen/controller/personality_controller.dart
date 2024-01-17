import 'package:almohsen_todoapp/core/app_export.dart';
import 'package:almohsen_todoapp/presentation/personality_screen/models/personality_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the PersonalityScreen.
///
/// This class manages the state of the PersonalityScreen, including the
/// current personalityModelObj
class PersonalityController extends GetxController {
  TextEditingController userNameController = TextEditingController();

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController hobbyController = TextEditingController();

  TextEditingController dateOfBirthController = TextEditingController();

  TextEditingController countryController = TextEditingController();

  Rx<PersonalityModel> personalityModelObj = PersonalityModel().obs;

  @override
  void onClose() {
    super.onClose();
    userNameController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    hobbyController.dispose();
    dateOfBirthController.dispose();
    countryController.dispose();
  }
}
