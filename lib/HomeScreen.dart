import 'package:flutter/material.dart';
import 'package:quiz_app/models/questions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int questionNumber = 0;

  answer(int questionIndex, int answerIndex) {
    var data = questions[questionIndex];
    return data.answer[answerIndex];
  }

  List rightAnswers = [];
  int? userAnswer;

  quiz(int index) {
    setState(() {
      questionNumber++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(253, 239, 228, 1),
        title: const Text(
          'Capitals quiz app',
          style: TextStyle(
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/quiz.png'), fit: BoxFit.fill)),
        child: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: questionNumber != questions.length
                    ? Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  questions[questionNumber].question,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                      color: Colors.black),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            Column(
                              children: [
                                ListView.separated(
                                  itemBuilder: (context, index) => Container(
                                    decoration: BoxDecoration(
                                      color: Colors.deepPurpleAccent,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: MaterialButton(
                                      onPressed: () {
                                        if (index ==
                                            questions[questionNumber]
                                                .answerIndex) {
                                          setState(() {
                                            rightAnswers.add(index);
                                          });
                                        }
                                        quiz(index);
                                      },
                                      child: Text(
                                        '${answer(questionNumber, index)}',
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                  itemCount: 4,
                                  separatorBuilder: (context, index) =>
                                      const SizedBox(
                                    height: 15,
                                  ),
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    : Center(
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(25)),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    'You answered ',
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  Text(
                                    '${rightAnswers.length}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 25),
                                  ),
                                  const Text(
                                    ' out of ',
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  Text(
                                    '${questions.length}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 25),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ))),
      ),
    );
  }
}
