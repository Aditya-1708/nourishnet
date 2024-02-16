import 'package:flutter/foundation.dart';
import 'package:nourishnet/classes/role_enum.dart';

class UserModel {
  final String? id;
  final String fullName;
  final String email;
  final String phoneNo;
  final String password;
  final Role role;

  const UserModel({
    this.id,
    required this.fullName,
    required this.email,
    required this.phoneNo,
    required this.password,
    required this.role,
  });

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "fullName": fullName,
      "email": email,
      "phoneNo": phoneNo,
      "password": password,
      "role": role,
    };
  }
}
