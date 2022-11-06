import 'package:flutter/material.dart';

void main() => runApp(const MyApp3());

class MyApp3 extends StatelessWidget {
  const MyApp3({Key? key}) : super(key: key);

  static const String _title = 'JustMove';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_title),
          backgroundColor: Colors.red,
        ),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Initial Selected Value
  String dropdownvalue = 'Kipling';
  String dropdownvalue2 = 'TTC-945';

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // List of items in our dropdown menu
  var items = [
    'Kipling',
    'Islington',
    'Finch',
    'Albion',
    'Jane',
  ];

  var items2 = ['TTC-945', 'TTC-127', 'TTC-115', 'TTC-12', 'TTC-38'];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(children: <Widget>[
        Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Search',
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.w500, fontSize: 30),
            )),
        Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'add new favourite',
              style: TextStyle(fontSize: 20),
            )),
        // Container(
        //   padding: const EdgeInsets.all(10),
        //   child: TextField(
        //     controller: nameController,
        //     decoration: const InputDecoration(
        //       border: OutlineInputBorder(),
        //       labelText: 'Bus #',
        //     ),
        //   ),
        // ),
        Container(
          padding: const EdgeInsets.fromLTRB(15, 20, 10, 0),
          child: DropdownButton(
            // Initial Value
            value: dropdownvalue2,

            // Down Arrow Icon
            icon: const Icon(Icons.keyboard_arrow_down),

            // Array list of items
            items: items2.map((String items2) {
              return DropdownMenuItem(
                value: items2,
                child: Text(items2),
              );
            }).toList(),
            // After selecting the desired option,it will
            // change button value to selected value
            onChanged: (String? newValue) {
              setState(() {
                dropdownvalue2 = newValue!;
              });
            },
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(15, 20, 10, 0),
          child: DropdownButton(
            // Initial Value
            value: dropdownvalue,

            // Down Arrow Icon
            icon: const Icon(Icons.keyboard_arrow_down),

            // Array list of items
            items: items.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(items),
              );
            }).toList(),
            // After selecting the desired option,it will
            // change button value to selected value
            onChanged: (String? newValue) {
              setState(() {
                dropdownvalue = newValue!;
              });
            },
          ),
        ),
        Container(
            height: 70,
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.red),
              child: const Text('Save'),
              onPressed: () {
                //print(nameController.text);
                //print(passwordController.text);
              },
            )),
      ]),
    );
  }
}
