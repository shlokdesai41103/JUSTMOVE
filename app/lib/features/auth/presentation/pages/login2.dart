import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../notifier/auth_state.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
        ),
        body: Center(
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(16.0),
            children: <Widget>[
              Text(
                "Login",
                style: Theme.of(context).textTheme.headline3,
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextField(
                controller: _email,
                decoration: InputDecoration(hintText: "email"),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextField(
                controller: _password,
                obscureText: true,
                decoration: InputDecoration(hintText: "password"),
              ),
              RaisedButton(
                  child: Text("Login"),
                  onPressed: () {
                    AuthState state =
                        Provider.of<AuthState>(context, listen: false);
                    state.login(_email.text, _password.text);
                  })
            ],
          ),
        ));
  }
}
