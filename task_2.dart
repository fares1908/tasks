import 'package:flutter/material.dart';

class Counter_Task extends StatefulWidget {
  const Counter_Task({Key? key}) : super(key: key);

  @override
  State<Counter_Task> createState() => _Counter_TaskState();
}

class _Counter_TaskState extends State<Counter_Task> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  counter--;
                  print(counter);
                });
              },
              icon: Icon(
                Icons.minimize_rounded,
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              '${counter}',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              width: 15,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
              icon: Icon(
                Icons.add,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
