import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
// import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(Object context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            // ...['spread', 'operator', 'is', 'magic']
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(
                answerText: answer,
                onTap: answerQuestion,
              );
            }),
          ],
        ),
      ),
    );
  }
}

// class _QuestionsScreenState extends State<QuestionsScreen> {
//   @override
//   Widget build(Object context) {
//     return Center(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           const Text(
//             'Is this the first questions of the quiz?',
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 22,
//             ),
//           ),
//           const SizedBox(
//             height: 16,
//           ),
//           ElevatedButton(
//             onPressed: () {},
//             child: const Text('Button 1'),
//           ),
//           ElevatedButton(
//             onPressed: () {},
//             child: const Text('Button 2'),
//           ),
//         ],
//       ),
//     );
//   }
// }
