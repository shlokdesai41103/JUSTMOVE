import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../notifier/auth_state.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _name = TextEditingController();
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
                controller: _name,
                decoration: const InputDecoration(hintText: "name"),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextField(
                controller: _email,
                decoration: const InputDecoration(hintText: "email"),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextField(
                controller: _password,
                obscureText: true,
                decoration: const InputDecoration(hintText: "password"),
              ),
              RaisedButton(
                  child: const Text("Sign up"),
                  onPressed: () {
                    AuthState state =
                        Provider.of<AuthState>(context, listen: false);
                    state.createAccount(
                        _name.text, _email.text, _password.text);
                  })
            ],
          ),
        ));
  }
}
