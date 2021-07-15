import 'package:eval_ex/expression.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Home(),
    )
  );
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String display = '';


  String QuickMath(String desplay){
    Expression exp = Expression(desplay);
    try {
      double res = exp.eval()!.toDouble();
      if(res > 999999999998) { String res3 = res.toStringAsExponential(3).toString();  return res3;}
      String res2 = exp.eval().toString();
      if(res2.length > 12) res2 = res2.substring(1,12);
      return res2;
    }
    catch(e){
      return 'Syntax Error';
    }
  }

  void ShowAlert(context){
    final snackBar = SnackBar(
      content: Text(
        "Can't enter more than 12 characters",
        style: TextStyle(
          fontSize: 17.0,
        ),
      ),
      action: SnackBarAction(
        onPressed: () {}, label: 'OK',),
      duration: Duration(seconds: 1),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  '$display',
                  style: TextStyle(
                    fontSize: 45.0,
                    //color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 40.0),
          Divider(
            height: 100.0,
            color: Colors.grey[700],
          ),
          //SizedBox(height: 0),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ButtonTheme(
                    height: 75.0,
                    minWidth: 92.0,
                    child: OutlineButton(
                      onPressed: () {
                        if(display.length < 12) {
                          setState(() {
                            display += '7';
                          });
                        }
                        else {
                          ShowAlert(context);
                        }
                      },
                      child: Text("7", style: TextStyle(
                        fontSize: 20.0,
                      ),),
                    ),
                  ),
                  ButtonTheme(
                    height: 75.0,
                    minWidth: 92.0,
                    child: OutlineButton(
                      onPressed: () {
                        if(display.length < 12) {
                          setState(() {
                            display += '8';
                          });
                        }
                        else {
                          ShowAlert(context);
                        }
                      },
                      child: Text("8", style: TextStyle(
                        fontSize: 20.0,
                      ),),
                    ),
                    //child: Colors.grey[200],
                  ),
                  ButtonTheme(
                    height: 75.0,
                    minWidth: 92.0,
                    child: OutlineButton(
                      onPressed: () {
                        if(display.length < 12) {
                          setState(() {
                            display += '9';
                          });
                        }
                        else {
                          ShowAlert(context);
                        }
                      },
                      child: Text("9", style: TextStyle(
                        fontSize: 20.0,
                      ),),
                    ),
                  ),
                  ButtonTheme(
                    height: 75.0,
                    minWidth: 92.0,
                    child: OutlineButton(
                      onPressed: () {
                        if(display.length < 12) {
                          setState(() {
                            display += '/';
                          });
                        }
                        else {
                          ShowAlert(context);
                        }
                      },
                      child: Text("/", style: TextStyle(
                        fontSize: 20.0,
                      ),),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 6.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ButtonTheme(
                    height: 75.0,
                    minWidth: 92.0,
                    child: OutlineButton(
                      onPressed: () {
                        if(display.length < 12) {
                          setState(() {
                            display += '4';
                          });
                        }
                        else {
                          ShowAlert(context);
                        }
                      },
                      child: Text("4", style: TextStyle(
                        fontSize: 20.0,
                      ),),
                    ),
                  ),
                  ButtonTheme(
                    height: 75.0,
                    minWidth: 92.0,
                    child: OutlineButton(
                      onPressed: () {
                        if(display.length < 12) {
                          setState(() {
                            display += '5';
                          });
                        }
                        else {
                          ShowAlert(context);
                        }
                      },
                      child: Text("5", style: TextStyle(
                        fontSize: 20.0,
                      ),),
                    ),
                    //child: Colors.grey[200],
                  ),
                  ButtonTheme(
                    height: 75.0,
                    minWidth: 92.0,
                    child: OutlineButton(
                      onPressed: () {
                        if(display.length < 12) {
                          setState(() {
                            display += '6';
                          });
                        }
                        else {
                          ShowAlert(context);
                        }
                      },
                      child: Text("6", style: TextStyle(
                        fontSize: 20.0,
                      ),),
                    ),
                  ),
                  ButtonTheme(
                    height: 75.0,
                    minWidth: 92.0,
                    child: OutlineButton(
                      onPressed: () {
                        if(display.length < 12) {
                          setState(() {
                            display += '*';
                          });
                        }
                        else {
                          ShowAlert(context);
                        }
                      },
                      child: Text("X", style: TextStyle(
                        fontSize: 20.0,
                      ),),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 6.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ButtonTheme(
                    height: 75.0,
                    minWidth: 92.0,
                    child: OutlineButton(
                      onPressed: () {
                        if(display.length < 12) {
                          setState(() {
                            display += '1';
                          });
                        }
                        else {
                          ShowAlert(context);
                        }
                      },
                      child: Text("1", style: TextStyle(
                        fontSize: 20.0,
                      ),),
                    ),
                  ),
                  ButtonTheme(
                    height: 75.0,
                    minWidth: 92.0,
                    child: OutlineButton(
                      onPressed: () {
                        if(display.length < 12) {
                          setState(() {
                            display += '2';
                          });
                        }
                        else {
                          ShowAlert(context);
                        }
                      },
                      child: Text("2", style: TextStyle(
                        fontSize: 20.0,
                      ),),
                    ),
                    //child: Colors.grey[200],
                  ),
                  ButtonTheme(
                    height: 75.0,
                    minWidth: 92.0,
                    child: OutlineButton(
                      onPressed: () {
                        if(display.length < 12) {
                          setState(() {
                            display += '3';
                          });
                        }
                        else {
                          ShowAlert(context);
                        }
                      },
                      child: Text("3", style: TextStyle(
                        fontSize: 20.0,
                      ),),
                    ),
                  ),
                  ButtonTheme(
                    height: 75.0,
                    minWidth: 92.0,
                    child: OutlineButton(
                      onPressed: () {
                        if(display.length < 12) {
                          setState(() {
                            display += '-';
                          });
                        }
                        else {
                          ShowAlert(context);
                        }
                      },
                      child: Text("-", style: TextStyle(
                        fontSize: 20.0,
                      ),),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 6.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ButtonTheme(
                    height: 75.0,
                    minWidth: 92.0,
                    child: OutlineButton(
                      onPressed: () {
                        if(display.length < 12) {
                          setState(() {
                            display += '.';
                          });
                        }
                        else {
                          ShowAlert(context);
                        }
                      },
                      child: Text(".", style: TextStyle(
                        fontSize: 20.0,
                      ),),
                    ),
                  ),
                  ButtonTheme(
                    height: 75.0,
                    minWidth: 92.0,
                    child: OutlineButton(
                      onPressed: () {
                        if(display.length < 12) {
                          setState(() {
                            display += '0';
                          });
                        }
                        else {
                          ShowAlert(context);
                        }
                      },
                      child: Text("0", style: TextStyle(
                        fontSize: 20.0,
                      ),),
                    ),
                    //child: Colors.grey[200],
                  ),
                  ButtonTheme(
                    height: 75.0,
                    minWidth: 92.0,
                    child: OutlineButton(
                      onPressed: () {
                        if(display.length < 12) {
                          setState(() {
                            display += '00';
                          });
                        }
                        else {
                          ShowAlert(context);
                        }
                      },
                      child: Text("00", style: TextStyle(
                        fontSize: 20.0,
                      ),),
                    ),
                  ),
                  ButtonTheme(
                    height: 75.0,
                    minWidth: 92.0,
                    child: OutlineButton(
                      onPressed: () {
                        if(display.length < 12) {
                          setState(() {
                            display += '+';
                          });
                        }
                        else {
                          ShowAlert(context);
                        }
                      },
                      child: Text("+", style: TextStyle(
                        fontSize: 20.0,
                      ),),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 6.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ButtonTheme(
                    height: 75.0,
                    minWidth: 190.0,
                    child: OutlineButton(
                      onPressed: () {
                        setState(() {
                          display = '';
                        });
                      },
                      child: Text("CLEAR", style: TextStyle(
                        fontSize: 20.0,
                      ),),
                    ),
                  ),
                  ButtonTheme(
                    height: 75.0,
                    minWidth: 190.0,
                    child: OutlineButton(
                      onPressed: () {
                        setState(() {
                          display = QuickMath(display);
                        });
                      },
                      child: Text("=", style: TextStyle(
                        fontSize: 20.0,
                      ),),
                    ),
                    //child: Colors.grey[200],
                  ),
                ],
              ),
            ]
          ),
        ]
      ),
    );
  }
}
