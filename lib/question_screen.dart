import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIdx = 0;

  void answerQuestion() {
    setState(() {
      currentQuestionIdx++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIdx];
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
        child: Container(
          margin: const EdgeInsets.only(
            bottom: 10,
            left: 20,
            right:20,
            top:10,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Padding(padding: EdgeInsets.all(40)),
              Text(
                currentQuestion.questions,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              ...currentQuestion.getShuffledAnswers().map((answer) {
                return AnswerButton(answer, answerQuestion);
              })
            ],
          ),
        ),
      ),
    );
  }
}
