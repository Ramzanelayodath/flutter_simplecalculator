import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculatorclass());

  }
}

class Calculatorclass extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {

    return calcstate();
  }

}

class calcstate extends State<Calculatorclass>
{
  int ans = 0;
  TextEditingController num1ctrl = TextEditingController();
  TextEditingController num2ctrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
          child: Column(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(8.0),
                  child :SizedBox(
                      width: double.infinity,
                      child: TextFormField(
                        controller: num1ctrl,
                        decoration: InputDecoration(
                            labelText: 'Enter number'
                        ),
                        keyboardType: TextInputType.number,
                      )
                  )),
              Padding(
                  padding: EdgeInsets.all(8.0),
                  child :SizedBox(
                      width: double.infinity,
                      child: TextFormField(
                        controller: num2ctrl,
                        decoration: InputDecoration(
                          labelText: 'Enter number',
                        ),
                        keyboardType: TextInputType.number,
                      )
                  )),
              Padding(
                  padding: EdgeInsets.all(8.0),
                  child :SizedBox(
                      width: double.infinity,
                      child: Text("$ans")
                  )),
              Padding(
                  padding: EdgeInsets.all(8.0),
                  child :SizedBox(
                      width: double.infinity,
                      child: RaisedButton(onPressed:(){
                        Answer(num1ctrl.text, num2ctrl.text);
                      } ,child: Text("ADD"))
                  ))
            ],
          )
      )
    );

  }

  void Answer(String num1 , String num2)
  {
    int Num1 = int.parse(num1);
    int Num2 = int.parse(num2);
    int sum = Num1+Num2;
    print(sum);
    setState(() {
      ans = sum;
    });

  }

}

