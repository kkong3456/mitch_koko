import 'package:flutter/material.dart';
import 'package:mitch_koko/util/todo_tile.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<TodoTile> todos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text('To Do'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) {
            return todos[index];
          },
        ),
      ),
    );
  }
}
