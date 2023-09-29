import 'dart:js_util';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:multiplication_app/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Multiplication App',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map<String, double> Number = {
    'Num1': 0,
    'Num2': 0,
  };
  double sum = 0;
  @override
  Widget build(BuildContext context) {
    count(Inputkey, Inputvalue) {
      setState(() {
        Number.update(Inputkey, (value) => double.parse(Inputvalue));
      });
    }

    Multi() {
      setState(() {
        sum = Number['Num1']! * Number['Num2']!;
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Multiplication App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'SUM=$sum',
            style: text(),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            onChanged: (value) {
              setState(() {
                count('Num1', value);
              });
            },
            decoration: decoration('Enter First Number'),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            onChanged: (value) {
              setState(() {
                count('Num2', value);
              });
            },
            decoration: decoration('Enter Second Number'),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
                style: App(),
                onPressed: () {
                  Multi();
                },
                child: Text(
                  'Multiply',
                  style: text(),
                )),
          )
        ],
      ),
    );
  }
}
