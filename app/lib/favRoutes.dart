import 'dart:convert';
import 'dart:io';
import 'package:app/main.dart';
import 'package:flutter/material.dart';

import 'package:appwrite/appwrite.dart';

Client appwrite = Client()
    .setEndpoint('https://100.67.12.13/v1');
    .setProject('6366a712636dad4fdee1')
    .setSelfSigned(status: true);



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
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: const Icon(Icons.add),
        backgroundColor: Colors.blue,
        label: const Text('New'),
      ),
    );
  }
}
