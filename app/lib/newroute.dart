import 'dart:convert';
import 'dart:io';
import 'package:app/main.dart';
import 'package:flutter/material.dart';

const List<String> bus = <String>['116'];
const List<String> station = <String>['Staines Rd', 'Kingston Rd'];


/*
import 'package:appwrite/appwrite.dart';

Client appwrite = Client()
    .setEndpoint('https://100.67.12.13/v1')
    .setProject('6366a712636dad4fdee1')
    .setSelfSigned(status: true);


Databases databases = Databases(appwrite);
//Stores busses
List<String> bus = <String>['TTC-116','TTC-46','TTC-86'];
List<String> station = databases.listDocuments("JustMove-DB" , "SELECTED VALUE FROM BUS FIELD");

*/

void main() {
  runApp(const newroute());
}

/*
class newroute extends StatelessWidget {
  const newroute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'New Route',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
*/

class newroute extends StatelessWidget {
  const newroute({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('New Route')),
        body: const Center(
          child: DropdownButtonExample(),
        ),
      ),
    );
  }
}

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = bus.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
     
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: bus.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
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
        title: const Text('New Route'),
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
