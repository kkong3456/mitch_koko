import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mitch_koko/data/database.dart';
import 'package:mitch_koko/util/dialog_box.dart';
import 'package:mitch_koko/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _myBox = Hive.box('mybox');
  TodoDataBase db = TodoDataBase();

  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    if (_myBox.isEmpty) {
      db.createInitialData();
    } else {
      db.loadData();
    }
    super.initState();
  }

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      db.todoList[index][1] = value;
    });
    db.updateDataBase();
  }

  void saveNewTask() {
    setState(() {
      db.todoList.add([_controller.text, false]);
      _controller.clear();
    });
    db.updateDataBase();
    Navigator.of(context).pop();
  }

  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) => DialogBox(
        controller: _controller,
        onSave: saveNewTask,
        onCancel: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }

  void deleteTask(int index) {
    setState(() {
      db.todoList.removeAt(index);
    });
    db.updateDataBase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text('To Do'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: db.todoList.length,
          itemBuilder: (context, index) {
            return TodoTile(
              taskName: db.todoList[index][0],
              taskCompleted: db.todoList[index][1],
              onChanged: (bool? value) => checkBoxChanged(value, index),
              deleteFunction: (context) => deleteTask(index),
            );
          },
        ),
      ),
    );
  }
}
