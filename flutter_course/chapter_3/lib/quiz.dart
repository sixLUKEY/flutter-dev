import 'package:chapter_3/data/questions.dart';
import 'package:chapter_3/questions_screen.dart';
import 'package:chapter_3/results_screen.dart';
import 'package:flutter/material.dart';

import 'start_screeen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenHandler() {
      if (activeScreen == 'start-screen') {
        return StartScreen(switchScreen);
      } else if (activeScreen == 'questions-screen') {
        return QuestionsScreen(onSelectAnswer: chooseAnswer);
      } else {
        return ResultsScreen(
          chosenAnswers: selectedAnswers,
        );
      }
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.indigoAccent, Colors.purpleAccent],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: screenHandler(),
        ),
      ),
    );
  }
}
