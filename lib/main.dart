import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> names = ['Mitch', 'Sharon', 'Beny'];

    void userTapped() {
      print('User tapped!');
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('My App'),
            centerTitle: true,
            backgroundColor: Colors.lightGreen,
          ),
          body: GestureDetector(
            onTap: userTapped,
            child: Center(
                child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.deepPurple[200],
                    child: const Center(child: Text('Tap me!')))),
          )),
    );
  }
}
