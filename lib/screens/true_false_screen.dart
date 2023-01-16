import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/questoin_brain.dart';

class TrueFalseScreen extends StatefulWidget {
  const TrueFalseScreen({Key key});

  @override
  State<TrueFalseScreen> createState() => _TrueFalseScreenState();
}

class _TrueFalseScreenState extends State<TrueFalseScreen> {
  List<Icon> scoreAnswer = [];
  bool _isLast = false;
  @override
  void checkAnswer(bool answer) {
    final _isLatsQuestion = questionBrain.isLastQuestions();
    if (_isLatsQuestion == 'sona erdi') {
      setState(() {
        _isLast = true;
      });
    }
    final _finished = questionBrain.isFinished();
    if (_finished) {
      showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('AlertDialog Title'),
            content: SingleChildScrollView(
              child: ListBody(
                children: const <Widget>[
                  Text('finish!'),
                  Text('Ayaginda'),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text('ok'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
      questionBrain.reset();
      setState(() {
        scoreAnswer = [];
        _isLast = false;
      });
    } else {
      final _result = questionBrain.checkAnswer(answer);
      if (_result) {
        scoreAnswer.add(
          const Icon(
            Icons.check,
            color: Colors.green,
          ),
        );
      } else {
        scoreAnswer.add(
          const Icon(
            Icons.close,
            color: Colors.red,
          ),
        );
      }
      questionBrain.nextQuestion();
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 5,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  child: Center(
                    child: Text(
                      // 'test',
                      questionBrain.getQuestion(),
                    ),
                  ),
                  width: double.infinity,
                  height: 80,
                ),
              ),
            ),
            Row(
              children: [
                _isLast
                    ? const SizedBox.shrink()
                    : Expanded(
                        child: GestureDetector(
                          onTap: () {
                            checkAnswer(true);
                            print('h');
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.green),
                              height: 60,
                              width: double.infinity,
                              child: const Center(
                                child: Text('True'),
                              ),
                              // color: Colors.green,
                            ),
                          ),
                        ),
                      ),
                const SizedBox(
                  width: 14,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      checkAnswer(false);
                      print('s');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.red,
                      ),
                      height: 60,
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          _isLast ? 'Sona erdi' : 'false',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: scoreAnswer,
            )
          ],
        ),
      ),
    );
  }
}
