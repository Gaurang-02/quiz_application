import 'package:quiz_app/answer_button.dart';

class QuizQuestions{
  const QuizQuestions(this.questions,this.answer);

  final String questions;
  final List<String> answer;

  List<String> getShuffledAnswers(){
    final shuffledAnswer=List.of(answer);
    shuffledAnswer.shuffle();
    return shuffledAnswer;
  }
}