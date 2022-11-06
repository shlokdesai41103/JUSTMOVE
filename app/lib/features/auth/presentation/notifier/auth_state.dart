import 'package:app/constants.dart';
import 'package:flutter/material.dart';
import 'package:appwrite/appwrite.dart';

class AuthState extends ChangeNotifier {
  Client client = Client();
  late Account account;

  AuthState() {
    _init();
  }

  _init() {
    client
        .setEndpoint(AppConstants.endpoint)
        .setProject(AppConstants.projectId);
    account = Account(client);
  }
  //
  // _checkIsLoggedIn() async {
  //   try {
  //     var res =
  //         await account.createEmailSession(email: email, password: password);
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  login(String email, String password) async {
    try {
      var result =
          await account.createEmailSession(email: email, password: password);
      print(result);
    } catch (e) {
      print(e);
    }
  }

  createAccount(String name, String email, String password) async {
    try {
      var result = await account.create(
          email: email, password: password, name: name, userId: '1');
      print(result);
    } catch (e) {
      print(e);
    }
  }
}
