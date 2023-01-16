import 'package:flutter_application_1/page/question.dart';

class QuestionBrain {
  int index = 0;
  int countFinish = 0;

  List<Question> questions = [
    Question(question: 'Баткен Оштобу?', answer: false),
    Question(question: 'Баткен районбу?', answer: false),
    Question(question: 'Баткен Кыргызстандабы?', answer: true),
    Question(question: 'Kitayda insan cok mu ?', answer: true),
    Question(question: 'Kiz kule İzmirdemi?', answer: false),
    Question(question: 'Last?', answer: false),
  ];
  bool checkAnswer(bool answer) {
    
    return questions[index].answer;
  }

  bool isLastQuestions() {
   return questions[2].question == questions[index].question;
    
  }

  bool isFinished() {
   
    
  
    return index >= questions.length - 1;
  }

  void nextQuestion() {
    if (index < questions.length - 1) {
      index++;
    }
  }

  String getQuestion() {
    return questions[index].question;
  }

  void reset() {
    index = 0;
  }
}

final QuestionBrain questionBrain = QuestionBrain();
