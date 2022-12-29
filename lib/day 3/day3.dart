import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DayThree extends StatefulWidget {
  const DayThree({super.key});

  @override
  State<DayThree> createState() => _DayThreeState();
}

class _DayThreeState extends State<DayThree> {
  // Declaring textEditorController to use in the later
  final textEditorController = TextEditingController();

  //List
  List<String> todos = [];
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("To do App"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(todos[index]),
                    subtitle: const Text("Subtitle"),
                    leading: const Icon(Icons.verified_user),
                  ),
                );
              },
            ),
          ),
          Container(
            height: 100,
            color: Colors.grey,
            child: Row(
              children: [
                Expanded(
                    child: TextField(
                  controller: textEditorController,
                )),
                IconButton(
                    onPressed: () {
                      todos.add(textEditorController.text);
                      setState(() {});
                      textEditorController.text = "";
                    },
                    icon: const Icon(Icons.send))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TextEditorController {}
