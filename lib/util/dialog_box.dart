// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables, sized_box_for_whitespace

import "package:flutter/material.dart";
import "package:flutter_todo_application/util/my_button.dart";

class DialogBox extends StatelessWidget {
  final controller;
  const DialogBox({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 200,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Add a new task",
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MyButton(text: 'Save', onPressed: () {}),
              const SizedBox(
                width: 8,
              ),
              MyButton(text: 'Cancel', onPressed: () {})
            ],
          ),
        ]),
      ),
    );
  }
}
