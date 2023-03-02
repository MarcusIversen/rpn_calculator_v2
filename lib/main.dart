import 'package:flutter/material.dart';
import 'package:rpn_calculator_v2/buttons.dart';
import 'package:rpn_calculator_v2/command.dart';



void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(title: 'RPN - Calculator'),
      theme: new ThemeData(primarySwatch: Colors.cyan),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<num> stack = [];
  var userInput = '';
  String operator = '';
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black87,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Flexible(
                flex: 3,
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.black87,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(right: 20.0),
                        alignment: Alignment.centerRight,
                        child: Text(
                          stack.toString(),
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 5.0, left: 20.0),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          userInput,
                          style: TextStyle(color: Colors.white, fontSize: 80.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 5,
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.black,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Flexible_One(),
                      Flexible_Two(),
                      Flexible_Three(),
                      Flexible_Four(),
                      Flexible_Five(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Flexible Flexible_One() {
    return Flexible(
      flex: 1,
      child: Container(
        height: double.infinity,
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Flexible(
              flex: 1,
              child: MyButton(
                buttonTapped: (){
                  setState(() {
                    stack.clear();
                  });
                },
                color: Colors.white60,
                buttonText: "AC",
                textColor: Colors.white,
              ),
            ),
            Flexible(
              flex: 1,
              child: MyButton(
                buttonTapped: (){
                  setState(() {
                    userInput = "";
                  });
                },
                color: Colors.white60,
                buttonText: "C",
                textColor: Colors.white,
              ),
            ),
            Flexible(
              flex: 1,
              child: MyButton(
                buttonTapped: (){
                  setState(() {
                    userInput = userInput.substring(0, userInput.length - 1);
                  });
                },
                color: Colors.white60,
                buttonText: "DEL",
                textColor: Colors.white,
              ),
            ),
            Flexible(
              flex: 1,
              child: MyButton(
                buttonTapped: (){
                  operator = "/";
                  calculation(operator);
                },
                color: Colors.orange,
                buttonText: "/",
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Flexible Flexible_Two() {
    return Flexible(
      flex: 1,
      child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Flexible(
                flex: 1,
                child: MyButton(
                  buttonTapped: (){
                    setState(() {
                      userInput += "7";
                    });
                  },
                  color: Colors.white30,
                  buttonText: "7",
                  textColor: Colors.white,
                ),
              ),
              Flexible(
                flex: 1,
                child: MyButton(
                  buttonTapped: (){
                    setState(() {
                      userInput += "8";
                    });
                  },
                  color: Colors.white30,
                  buttonText: "8",
                  textColor: Colors.white,
                ),
              ),
              Flexible(
                flex: 1,
                child: MyButton(
                  buttonTapped: (){
                    setState(() {
                      userInput += "9";
                    });
                  },
                  color: Colors.white30,
                  buttonText: "9",
                  textColor: Colors.white,
                ),
              ),
              Flexible(
                flex: 1,
                child: MyButton(
                  buttonTapped: (){
                    operator = "*";
                    calculation(operator);
                  },
                  color: Colors.orange,
                  buttonText: "*",
                  textColor: Colors.white,
                ),
              ),
            ],
          )),
    );
  }

  Flexible Flexible_Three() {
    return Flexible(
      flex: 1,
      child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Flexible(
                flex: 1,
                child: MyButton(
                  buttonTapped: (){
                    setState(() {
                      userInput += "4";
                    });
                  },
                  color: Colors.white30,
                  buttonText: "4",
                  textColor: Colors.white,
                ),
              ),
              Flexible(
                flex: 1,
                child: MyButton(
                  buttonTapped: (){
                    setState(() {
                      userInput += "5";
                    });
                  },
                  color: Colors.white30,
                  buttonText: "5",
                  textColor: Colors.white,
                ),
              ),
              Flexible(
                flex: 1,
                child: MyButton(
                  buttonTapped: (){
                    setState(() {
                      userInput += "6";
                    });
                  },
                  color: Colors.white30,
                  buttonText: "6",
                  textColor: Colors.white,
                ),
              ),
              Flexible(
                flex: 1,
                child: MyButton(
                  buttonTapped: (){
                      operator = "+";
                      calculation(operator);
                  },
                  color: Colors.orange,
                  buttonText: "+",
                  textColor: Colors.white,
                ),
              ),
            ],
          )),
    );
  }

  Flexible Flexible_Four() {
    return Flexible(
      flex: 1,
      child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Flexible(
                flex: 1,
                child: MyButton(
                  buttonTapped: (){
                    setState(() {
                      userInput += "1";
                    });
                  },
                  color: Colors.white30,
                  buttonText: "1",
                  textColor: Colors.white,
                ),
              ),
              Flexible(
                flex: 1,
                child: MyButton(
                  buttonTapped: (){
                    setState(() {
                      userInput += "2";
                    });
                  },
                  color: Colors.white30,
                  buttonText: "2",
                  textColor: Colors.white,
                ),
              ),
              Flexible(
                flex: 1,
                child: MyButton(
                  buttonTapped: (){
                    setState(() {
                      userInput += "3";
                    });
                  },
                  color: Colors.white30,
                  buttonText: "3",
                  textColor: Colors.white,
                ),
              ),
              Flexible(
                flex: 1,
                child: MyButton(
                  buttonTapped: (){
                    operator = "-";
                    calculation(operator);
                  },
                  color: Colors.orange,
                  buttonText: "-",
                  textColor: Colors.white,
                ),
              ),
            ],
          )),
    );
  }

  Flexible Flexible_Five() {
    return Flexible(
      flex: 1,
      child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Flexible(
                flex: 2,
                child: MyButton(
                  buttonTapped: (){
                    setState(() {
                      userInput += "0";
                    });
                  },
                  color: Colors.white30,
                  buttonText: "0",
                  textColor: Colors.white,
                ),
              ),
              Flexible(
                flex: 1,
                child: MyButton(
                  buttonTapped: (){
                    setState(() {
                      userInput += ".";
                    });
                  },
                  color: Colors.white30,
                  buttonText: ".",
                  textColor: Colors.white,
                ),
              ),
              Flexible(
                flex: 1,
                child: MyButton(
                  buttonTapped: (){
                    setState(() {
                      stack.add(num.parse(userInput));
                      userInput = "";
                    });
                  },
                  color: Colors.orange,
                  buttonText: "ENTER",
                  textColor: Colors.white,
                ),
              ),
            ],
          )),
    );
  }

  void calculation(String operator) {
    num newValue;
    setState(() {
      var lastTwo = stack.reversed.take(2);
      num a = lastTwo.last;
      num b = lastTwo.first;
      stack.remove(a);
      stack.remove(b);
      switch (operator) {
        case '+':
          newValue = Addition(a, b).execute();
          stack.add(newValue);
          break;
        case '-':
          newValue = Subtraction(a, b).execute();
          stack.add(newValue);
          break;
        case '*':
          newValue = Multiplication(a, b).execute();
          stack.add(newValue);
          break;
        case '/':
          newValue = Divison(a, b).execute();
          stack.add(newValue);
          break;
      }
      stack.toList();
    });
  }
}



class CustomButton extends StatelessWidget {
  String text;

  CustomButton(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6.0),
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          color: Colors.white24),
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 26.0),
      ),
    );
  }
}


