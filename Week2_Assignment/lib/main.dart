import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'QuestionSheet.dart';
import 'AnswerToQs.dart';


void main() {
  runApp(
    MaterialApp(
      home: Quiz(),
    ),
  );
}


class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  _QuizState createState() => _QuizState();
}

int score = 0;
int index = 0;

QSheet qsheetc = QSheet();
Answers asheetc = Answers();

List qsheet = qsheetc.que;
Map asheet = asheetc.ans;

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        title: Text('QUIZ',
          style: TextStyle(
            color: Colors.white
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            'Score : ${score}',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 200.0, 8.0, 0.0),
            child: Center(
              child: Text(
                qsheet[index%5],
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                )
              ),
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: Column(
              children: [
                ButtonTheme(
                  // minWidth: 350.0,
                  height: 70.0,
                  child: FractionallySizedBox(
                    widthFactor: .9,
                    child: FlatButton(
                      onPressed: (){
                        setState(() {
                          if(asheet[qsheet[index%5]]=='True'){
                            score +=1;
                          }
                          index +=1;
                        });
                      },
                      child: Text('TRUE',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0
                        ),
                      ),
                      color: Colors.green,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                ButtonTheme(
                  height: 70.0,
                  child: FractionallySizedBox(
                    widthFactor: .9,
                    child: FlatButton(
                      onPressed: (){
                        setState(() {
                          if(asheet[qsheet[index%5]]=='False'){
                            score +=1;
                          }
                          index +=1;
                        });
                      },
                      child: Text('FALSE',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0
                        ),
                      ),
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
