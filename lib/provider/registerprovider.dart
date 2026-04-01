import 'package:flutter/material.dart';
import 'package:revitionnn/models/registermodel.dart';
import 'package:revitionnn/service/registerservice.dart';

class Registerprovider extends ChangeNotifier {
  Registermodel? r;

  Future<void> login({required String email, required String password}) async {
    r = await Registerservice.login(email: email, password: password);
    notifyListeners();
  }

  Future<void> signup({
    required String email,
    required String password,
    required String Name,
    required String contract,
  }) async {
    r = await Registerservice.signup(
      Contract: contract,
      Name: Name,
      email: email,
      password: password,
    );
    notifyListeners();
  }
}
