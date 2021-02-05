import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz/question.dart';
import 'package:quiz/score_screen.dart';

class MusicScreen extends StatefulWidget {
  @override
  _MusicScreenState createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  
  int answer = 0;
  int score = 0;
  int index = 0;
  List<Question> questionsList = Question.getQuestionList();
  
  void verifyResponse() {
    if(answer == questionsList[index].answer){
      score = score + 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /*automaticallyImplyLeading: false => para tirar o botão de voltar*/
        backgroundColor: Color(0xff3E96FF),
        title: Text('Quiz Musical'),
      ),
      body: Column(
        children: [
          Container(
            margin:EdgeInsets.fromLTRB(32, 56, 32, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('PERGUNTA $index:', 
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 16),
                Text(
                  questionsList[index].questionText,
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
          SizedBox(height: 40),
          Expanded(
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(32, 10, 32,  10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.15),
                        spreadRadius: 2,
                        blurRadius:3,
                        offset: Offset(1, 3)
                      ),
                    ],
                  ),
                  child: RadioListTile(
                    value: 1, 
                    groupValue: answer,
                    title: Text(questionsList[index].option1), 
                    onChanged: (int value) {
                      setState(() {
                        answer = value;
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(32, 10, 32,  10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.15),
                        spreadRadius: 2,
                        blurRadius:3,
                        offset: Offset(1, 3)
                      ),
                    ],
                  ),
                  child: RadioListTile(
                    value: 2, 
                    groupValue: answer,
                    title: Text(questionsList[index].option2), 
                    onChanged: (int value) {
                      setState(() {
                        answer = value;
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(32, 10, 32,  10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.15),
                        spreadRadius: 2,
                        blurRadius:3,
                        offset: Offset(1, 3)
                      ),
                    ],
                  ),
                  child: RadioListTile(
                    value: 3, 
                    groupValue: answer,
                    title: Text(questionsList[index].option3), 
                    onChanged: (int value) {
                      setState(() {
                        answer = value;
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(32, 10, 32,  10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.15),
                        spreadRadius: 2,
                        blurRadius:3,
                        offset: Offset(1, 3)
                      ),
                    ],
                  ),
                  child: RadioListTile(
                    value: 4, 
                    groupValue: answer,
                    title: Text(questionsList[index].option4), 
                    onChanged: (int value) {
                      setState(() {
                        answer = value;
                      });
                    },
                  ),
                ),
              ],
            ), 
          ),
          Container(
            height: 87,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.25),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(0, -1),
                )
              ],
            ),
            child: Center(
              child: FlatButton(
                onPressed: () {
                  verifyResponse();
                  if (index < questionsList.length - 1){
                    setState(() {
                      index = index + 1;
                      answer = 0;
                    });
                  } else{
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => ScoreScreen(
                          maximum: questionsList.length, 
                          result: score,
                        )
                      )
                    );
                  }
                }, 
                child: Text(
                  'Responder', 
                  style: TextStyle(fontSize: 16.5),
                ),
                color: Color(0xffA052FF),
                textColor: Color(0xfff7f7f7),
                padding: EdgeInsets.fromLTRB(60, 11, 60, 11),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}