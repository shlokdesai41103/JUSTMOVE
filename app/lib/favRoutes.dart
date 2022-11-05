import 'dart:convert';
import 'dart:io';
import 'package:app/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const favRoutes());
}

class favRoutes extends StatelessWidget {
  const favRoutes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Favourite Routes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Commutes'),
      ),
      body: const Center(
        child: Text('This is where the users favorites will be displayed'),
      ),
    );
  }

  floatingActionButton: FloatingActionButton(
    backgroundColor: Colors.blue,
    foregroundColor: Colors.white,
    onPressed: () {
      //respond
    },
    icon: Icon(Icons.add),
    label: Text('Add new route'),
  ),
}