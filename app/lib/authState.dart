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

  login(String username, String password) async {
    try {
      var result =
          await account.createSession(email: username, password: password);
      print(result);
    } catch (e) {
      print(e);
    }
  }
}
