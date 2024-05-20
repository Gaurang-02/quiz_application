import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 3, 18, 127),
            Colors.lightBlueAccent,
            Color.fromARGB(255, 3, 18, 127),
          ]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Questions Screen',
              style: TextStyle(
                fontSize: 32,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {}, child: const Text('answer 1')),
            ElevatedButton(onPressed: () {}, child: const Text('answer 2')),
            ElevatedButton(onPressed: () {}, child: const Text('answer 3')),
            ElevatedButton(onPressed: () {}, child: const Text('answer 4')),
          ],
        ),
      ),
    );
  }
}
