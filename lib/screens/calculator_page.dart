import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';


class Calculator extends StatefulWidget {

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  static TextEditingController controller = TextEditingController();
  static List<String> input=[];
  var a;

  @override
  Widget build(BuildContext context) {
    var a=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:Colors.deepPurple,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor:Colors.blueAccent[100],

        title: Text('Calculator'),
      ),
      body: Column(

        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        children: [
          TextField(

            style: TextStyle(

              fontSize: 50,
            ),
            controller: controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: '',
              hintText: '',
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top:a.height*0.3, left: 5),
            child:Expanded(
            child:Row(
              children: [

                Container(
                  margin: EdgeInsets.all(5),
                  width:a.width*0.2,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        foregroundColor: Colors.yellow,
                        backgroundColor: Colors.orange,
                        textStyle: const TextStyle(fontSize: 20)),
                    child: Text('AC', style: TextStyle(fontSize: 20.0),),
                    onPressed: () {
                      setState(() {
                        controller.clear();
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  width:a.width*0.2,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        foregroundColor: Colors.yellow,
                        backgroundColor: Colors.green,
                        textStyle: const TextStyle(fontSize: 20)),
                    child: Text('+/-', style: TextStyle(fontSize: 20.0),),
                    onPressed: () {
                      setState(() {
                        controller.text = "2";
                        input.add('2');

                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  width:a.width*0.2,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        foregroundColor: Colors.yellow,
                        backgroundColor: Colors.green,
                        textStyle: const TextStyle(fontSize: 20)),
                    child: Text('%', style: TextStyle(fontSize: 20.0),),
                    onPressed: () {
                      controller.text = controller.text + "%";
                      input.add('%');
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  width:a.width*0.2,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        foregroundColor: Colors.yellow,
                        backgroundColor: Colors.green,
                        textStyle: const TextStyle(fontSize: 20)),
                    child: Text('/', style: TextStyle(fontSize: 20.0),),
                    onPressed: () {
                      controller.text = controller.text + "/";
                     input.add('/');
                    },
                  ),
                ),
              ],
            ),
          ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 0, left: 5),
            child: Row(
              children: [

                Container(
                  margin: EdgeInsets.all(5),
                  width:a.width*0.2,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        foregroundColor: Colors.yellow,
                        backgroundColor: Colors.green,
                        textStyle: const TextStyle(fontSize: 20)),
                    child: Text('7', style: TextStyle(fontSize: 20.0),),
                    onPressed: () {
                      setState(() {
                        controller.text = controller.text + "7";
                        input.add('7');
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  width:a.width*0.2,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        foregroundColor: Colors.yellow,
                        backgroundColor: Colors.green,
                        textStyle: const TextStyle(fontSize: 20)),
                    child: Text('8', style: TextStyle(fontSize: 20.0),),
                    onPressed: () {
                      setState(() {
                        controller.text = controller.text + "8";
                        input.add('8');
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  width: a.width*0.2,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        foregroundColor: Colors.yellow,
                        backgroundColor: Colors.green,
                        textStyle: const TextStyle(fontSize: 20)),
                    child: Text('9', style: TextStyle(fontSize: 20.0),),
                    onPressed: () {
                      controller.text = controller.text + "9";
                      input.add('9');
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  width: a.width*0.2,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        foregroundColor: Colors.yellow,
                        backgroundColor: Colors.green,
                        textStyle: const TextStyle(fontSize: 20)),
                    child: Text('*', style: TextStyle(fontSize: 20.0),),
                    onPressed: () {
                      controller.text = controller.text + "*";
                      input.add('*');
                    },
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 0, left: 5),
            child: Row(
              children: [

                Container(
                  margin: EdgeInsets.all(5),
                  width: a.width*0.2,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        foregroundColor: Colors.yellow,
                        backgroundColor: Colors.green,
                        textStyle: const TextStyle(fontSize: 20)),
                    child: Text('4', style: TextStyle(fontSize: 20.0),),
                    onPressed: () {
                      controller.text = controller.text + "4";
                      input.add('4');
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  width: a.width*0.2,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        foregroundColor: Colors.yellow,
                        backgroundColor: Colors.green,
                        textStyle: const TextStyle(fontSize: 20)),
                    child: Text('5', style: TextStyle(fontSize: 20.0),),
                    onPressed: () {
                      controller.text = controller.text + "5";
                      input.add('5');
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  width: a.width*0.2,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        foregroundColor: Colors.yellow,
                        backgroundColor: Colors.green,
                        textStyle: const TextStyle(fontSize: 20)),
                    child: Text('6', style: TextStyle(fontSize: 20.0),),
                    onPressed: () {
                      controller.text = controller.text + "6";
                      input.add('6');
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  width: a.width*0.2,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        foregroundColor: Colors.yellow,
                        backgroundColor: Colors.green,
                        textStyle: const TextStyle(fontSize: 20)),
                    child: Text('-', style: TextStyle(fontSize: 20.0),),
                    onPressed: () {
                      controller.text = controller.text + "-";
                      input.add('-');
                    },
                  ),
                ),

              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: 0, left: 5),
            child: Row(
              children: [

                Container(
                  margin: EdgeInsets.all(5),
                  width: a.width*0.2,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        foregroundColor: Colors.yellow,
                        backgroundColor: Colors.green,
                        textStyle: const TextStyle(fontSize: 20)),
                    child: Text('1', style: TextStyle(fontSize: 20.0),),
                    onPressed: () {
                      controller.text = controller.text + "1";
                      input.add('1');
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  width: a.width*0.2,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        foregroundColor: Colors.yellow,
                        backgroundColor: Colors.green,
                        textStyle: const TextStyle(fontSize: 20)),
                    child: Text('2', style: TextStyle(fontSize: 20.0),),
                    onPressed: () {
                      controller.text = controller.text + "2";
                      input.add('2');
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  width: a.width*0.2,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        foregroundColor: Colors.yellow,
                        backgroundColor: Colors.green,
                        textStyle: const TextStyle(fontSize: 20)),
                    child: Text('3', style: TextStyle(fontSize: 20.0),),
                    onPressed: () {
                      controller.text = controller.text + "3";
                      input.add('3');
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  width: a.width*0.2,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        foregroundColor: Colors.yellow,
                        backgroundColor: Colors.green,
                        textStyle: const TextStyle(fontSize: 20)),
                    child: Text('+', style: TextStyle(fontSize: 20.0),),
                    onPressed: () {
                      // add=int.parse(controller.text)+add;
                      // add=1;
                      controller.text = controller.text + "+";
input.add('+');
                    },
                  ),
                ),

              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: 0, left: 5),
            child: Row(
              children: [

                Container(
                  margin: EdgeInsets.all(5),
                  width:a.width*0.43,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        foregroundColor: Colors.yellow,
                        backgroundColor: Colors.green,
                        textStyle: const TextStyle(fontSize: 20)),
                    child: Text('0', style: TextStyle(fontSize: 20.0),),
                    onPressed: () {
                      controller.text = controller.text + "0";
                      input.add('0');
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  width:a.width*0.2,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        foregroundColor: Colors.yellow,
                        backgroundColor: Colors.green,
                        textStyle: const TextStyle(fontSize: 20)),
                    child: Text('.', style: TextStyle(fontSize: 20.0),),
                    onPressed: () {},
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  width: a.width*0.2,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        foregroundColor: Colors.yellow,
                        backgroundColor: Colors.green,
                        textStyle: const TextStyle(fontSize: 20)),
                    child: Text('=', style: TextStyle(fontSize: 20.0),),
                    onPressed: () {
                      result();
                    },
                  ),
                ),


              ],
            ),
          ),


        ],
      ),
    );
  }


  static void result() {
    String finaluserinput = controller.text;
    finaluserinput = controller.text.replaceAll('x', '*');

    Parser p = Parser();
    Expression exp = p.parse(finaluserinput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    controller.text = eval.toString();
  }


}