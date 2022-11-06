import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/single_child_widget.dart';
import 'notifier/auth_state.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider(
    create: (context) => AuthState(),
    lazy: false,
  )
];
