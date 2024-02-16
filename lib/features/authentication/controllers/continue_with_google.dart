import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nourishnet/repository/Authentication_Repository/authentication_repository.dart';

class ContinueController extends GetxController {
  static ContinueController get instance => Get.find();
  void continueGoogle() {
    AuthenticationRepository.instance.continueWithGoogle();
  }
}
