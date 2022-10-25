import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionbank = [
    Question('Nigeria is located in WestAfrica', true),
    Question('Computer is an electronic device', true),
    Question('Lagos is the capital of Nigeria', false),
    Question('Naira is equivalent to dollar', false),
    Question('Dart is an OOP', true),
    Question('Flutter is also called Django', false),
  ];

  void nestQuestion() {
    if (isFinished() == true) {
    } else if (_questionNumber < _questionbank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionbank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionbank[_questionNumber].questionAnswered;
  }

  bool isFinished() {
    if (_questionNumber >= _questionbank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
