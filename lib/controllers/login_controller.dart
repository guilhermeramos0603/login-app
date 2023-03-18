import 'package:app/service/prefs_service.dart';
import 'package:flutter/material.dart';

class LoginController {
  ValueNotifier<bool> inLoader = ValueNotifier<bool>(false);

  String? _email;
  setEmail(String value) => _email = value;

  String? _pass;
  setPass(String value) => _pass = value;

  Future<bool> auth() async {
    inLoader.value = true;
    await Future.delayed(const Duration(seconds: 2));
    inLoader.value = false;
    if (_email == 'admin@mail.com' && _pass == '123456') {
      PrefsService.save(_email!);
      return true;
    }
    return false;
  }
}
