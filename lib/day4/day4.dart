import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:internship/day4/models/todo_model.dart';

class DayFour extends StatefulWidget {
  const DayFour({super.key});

  @override
  State<DayFour> createState() => _DayFourState();
}

class _DayFourState extends State<DayFour> {
  // Declaring textEditorController to use in the later
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  //List

  //
  int count = 0;
  double perc = 0.0;
  bool isSaved = false;

  List<TodoModel> todos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Day 4"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                var item = todos[index];
                return Dismissible(
                  key: UniqueKey(),
                  onDismissed: (direction) {
                    todos.removeAt(index);
                    setState(() {});
                  },
                  child: ListTile(
                      onTap: () {},
                      title: Text(item.title),
                      subtitle: Text(item.description ?? "Not available"),
                      leading: Icon(
                        Icons.verified_user,
                        color: item.done == true ? Colors.green : Colors.red,
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          todos[index].done = true;
                          setState(() {});
                        },
                        icon: Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                      )),
                );
              },
            ),
          ),
          Container(
            height: 160,
            color: Colors.grey,
            margin: const EdgeInsets.only(left: 5, right: 5, bottom: 20),
            padding: const EdgeInsets.only(left: 5, right: 5, bottom: 20),
            child: Row(
              children: [
                Expanded(
                    child: Column(
                  children: [
                    TextField(
                      controller: titleController,
                      decoration: const InputDecoration(labelText: 'Title'),
                    ),
                    TextField(
                      controller: descriptionController,
                      decoration:
                          const InputDecoration(labelText: 'Description'),
                    ),
                  ],
                )),
                IconButton(
                  onPressed: () {
                    TodoModel newItem = TodoModel(
                        title: titleController.text,
                        description: descriptionController.text,
                        done: false);
                    todos.add(newItem);
                    titleController.text = "";
                    descriptionController.text = "";
                    setState(() {});
                  },
                  icon: const Icon(Icons.send),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TextEditorController {}
