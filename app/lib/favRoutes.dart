import 'dart:convert';
import 'dart:io';
import 'package:app/main.dart';
import 'package:flutter/material.dart';
import 'routeDialog.dart';

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
  List<String> items0 = ["1", "2", "3", "5", "6"];
  List<String> items1 = ["1", "2", "3", "4", "5"];
  List<List<String>> items2 = [
    ["1", "2", "3", "4"],
    ["1", "2", "3", "4"],
    ["1", "2", "3", "4"],
    ["1", "2", "3", "4"],
    ["1", "2", "3", "4"]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Commutes'),
      ),
      body: ListView.builder(
          itemCount: items0.length,
          itemBuilder: (BuildContext ctxt, int index) {
            return Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Card(
                elevation: 5,
                child: Padding(
                    padding: const EdgeInsets.all(7),
                    child: Stack(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 5),
                          child: Row(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Row(
                                    children: [busNumber(index)],
                                  ),
                                  Row(
                                    children: [busStop(index)],
                                  )
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Row(
                                    children: [busTime(index)],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: const Icon(Icons.add),
        backgroundColor: Colors.blue,
        label: const Text('New'),
      ),
    );
  }

  Widget busNumber(var index) {
    return Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(items0[index]),
        ));
  }

  Widget busStop(var index) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Text(items1[index]),
      ),
    );
  }

  Widget busTime(var index) {
    String stringToReturn =
        "${items2[index][0]} ${items2[index][1]} ${items2[index][2]} ${items2[index][3]}";
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Text(
          stringToReturn,
          textAlign: TextAlign.right,
        ),
      ),
    );
  }

  // Widget busTimes(int index) {
  //   return Padding(
  //     padding: const EdgeInsets.only(left: 15.0),
  //     child: Align(
  //       alignment: Alignment.centerRight,
  //       child: ListView.builder(
  //           itemCount: items2[index].length,
  //           itemBuilder: (BuildContext context, index2) {
  //             return Container(
  //               padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
  //               child: Card(
  //                 elevation: 5,
  //                 child: Padding(
  //                     padding: const EdgeInsets.all(7),
  //                     child: Stack(
  //                       children: <Widget>[
  //                         Padding(
  //                           padding: const EdgeInsets.only(left: 10, top: 5),
  //                           child: Column(
  //                             children: <Widget>[
  //                               Row(
  //                                 children: <Widget>[
  //                                   busTimes2(index, index2),
  //                                 ],
  //                               ),
  //                             ],
  //                           ),
  //                         )
  //                       ],
  //                     )),
  //               ),
  //             );
  //           }),
  //     ),
  //   );
  // }
  //
  // Widget busTimes2(int index, int index2) {
  //   return Padding(
  //       padding: const EdgeInsets.only(left: 15.0),
  //       child: Align(
  //           alignment: Alignment.bottomRight,
  //           child: Text(items2[index][index2])));
  // }
}
