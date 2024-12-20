import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  TextEditingController _controller = TextEditingController();

  String greetingMessage = '';

  void greetUser() {
    String userName = _controller.text;
    setState(() {
      greetingMessage = 'Hello, ${userName}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                greetingMessage ?? 'Hello, World!',
                style: const TextStyle(color: Colors.red, fontSize: 20.0),
              ),
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your name',
                ),
              ),
              ElevatedButton(
                onPressed: greetUser,
                child: const Text('Tap'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
