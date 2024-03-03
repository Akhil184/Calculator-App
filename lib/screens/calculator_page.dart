import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  TextEditingController _controller = TextEditingController();

  late var add=0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle:true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text('Calculator'),
      ),
      body: Column(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        children: [
          TextField(
            style:TextStyle(
              fontSize:50,
            ),
            controller: _controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: '',
              hintText: '',
            ),
          ),

          Padding(
            padding:EdgeInsets.only(top:250,left:5),
            child:Row(
              children:[

                Container(
                  margin: EdgeInsets.all(5),
                  width:80,
                  child:TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        foregroundColor: Colors.yellow,
                        backgroundColor: Colors.green,
                        textStyle: const TextStyle(fontSize: 20)),
                    child: Text('AC', style: TextStyle(fontSize: 20.0),),
                    onPressed: () {
                      setState(() {
                        _controller.clear();

                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  width:80,
                  child:TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        foregroundColor: Colors.yellow,
                        backgroundColor: Colors.green,
                        textStyle: const TextStyle(fontSize: 20)),
                    child: Text('+/-', style: TextStyle(fontSize: 20.0),),
                    onPressed: () {
                      setState(() {
                        _controller.text="2";
//
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  width:80,
                  child:TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        foregroundColor: Colors.yellow,
                        backgroundColor: Colors.green,
                        textStyle: const TextStyle(fontSize: 20)),
                    child: Text('%', style: TextStyle(fontSize: 20.0),),
                    onPressed: () {
                      _controller.text=_controller.text+"%";
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  width:80,
                  child:TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        foregroundColor: Colors.yellow,
                        backgroundColor: Colors.green,
                        textStyle: const TextStyle(fontSize: 20)),
                    child: Text('/', style: TextStyle(fontSize: 20.0),),
                    onPressed: () {
                      _controller.text=_controller.text+"/";
                    },
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:EdgeInsets.only(top:0,left:5),
            child:Row(
              children:[

                Container(
                  margin: EdgeInsets.all(5),
                  width:80,
                  child:TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        foregroundColor: Colors.yellow,
                        backgroundColor: Colors.green,
                        textStyle: const TextStyle(fontSize: 20)),
                    child: Text('7', style: TextStyle(fontSize: 20.0),),
                    onPressed: () {
                      setState(() {
                        _controller.text=_controller.text+"7";

                      });

                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  width:80,
                  child:TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        foregroundColor: Colors.yellow,
                        backgroundColor: Colors.green,
                        textStyle: const TextStyle(fontSize: 20)),
                    child: Text('8', style: TextStyle(fontSize: 20.0),),
                    onPressed: () {
                      setState(() {
                        _controller.text=_controller.text+"8";

                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  width:80,
                  child:TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        foregroundColor: Colors.yellow,
                        backgroundColor: Colors.green,
                        textStyle: const TextStyle(fontSize: 20)),
                    child: Text('9', style: TextStyle(fontSize: 20.0),),
                    onPressed: () {
                      _controller.text=_controller.text+"9";
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  width:80,
                  child:TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        foregroundColor: Colors.yellow,
                        backgroundColor: Colors.green,
                        textStyle: const TextStyle(fontSize: 20)),
                    child: Text('*', style: TextStyle(fontSize: 20.0),),
                    onPressed: () {
                      _controller.text=_controller.text+"*";
                    },
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:EdgeInsets.only(top:0,left:5),
            child:Row(
              children:[

                Container(
                  margin: EdgeInsets.all(5),
                  width:80,
                  child:TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        foregroundColor: Colors.yellow,
                        backgroundColor: Colors.green,
                        textStyle: const TextStyle(fontSize: 20)),
                    child: Text('4', style: TextStyle(fontSize: 20.0),),
                    onPressed: () {
                      _controller.text=_controller.text+"4";
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  width:80,
                  child:TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        foregroundColor: Colors.yellow,
                        backgroundColor: Colors.green,
                        textStyle: const TextStyle(fontSize: 20)),
                    child: Text('5', style: TextStyle(fontSize: 20.0),),
                    onPressed: () {
                      _controller.text=_controller.text+"5";
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  width:80,
                  child:TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        foregroundColor: Colors.yellow,
                        backgroundColor: Colors.green,
                        textStyle: const TextStyle(fontSize: 20)),
                    child: Text('6', style: TextStyle(fontSize: 20.0),),
                    onPressed: () {
                      _controller.text=_controller.text+"6";
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  width:80,
                  child:TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        foregroundColor: Colors.yellow,
                        backgroundColor: Colors.green,
                        textStyle: const TextStyle(fontSize: 20)),
                    child: Text('-', style: TextStyle(fontSize: 20.0),),
                    onPressed: () {
                      _controller.text=_controller.text+"-";
                    },
                  ),
                ),

              ],
            ),
          ),

          Padding(
            padding:EdgeInsets.only(top:0,left:5),
            child:Row(
              children:[

                Container(
                  margin: EdgeInsets.all(5),
                  width:80,
                  child:TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        foregroundColor: Colors.yellow,
                        backgroundColor: Colors.green,
                        textStyle: const TextStyle(fontSize: 20)),
                    child: Text('1', style: TextStyle(fontSize: 20.0),),
                    onPressed: () {
                      _controller.text=_controller.text+"1";
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  width:80,
                  child:TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        foregroundColor: Colors.yellow,
                        backgroundColor: Colors.green,
                        textStyle: const TextStyle(fontSize: 20)),
                    child: Text('2', style: TextStyle(fontSize: 20.0),),
                    onPressed: () {
                      _controller.text=_controller.text+"2";
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  width:80,
                  child:TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        foregroundColor: Colors.yellow,
                        backgroundColor: Colors.green,
                        textStyle: const TextStyle(fontSize: 20)),
                    child: Text('3', style: TextStyle(fontSize: 20.0),),
                    onPressed: () {
                      _controller.text=_controller.text+"3";
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  width:80,
                  child:TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        foregroundColor: Colors.yellow,
                        backgroundColor: Colors.green,
                        textStyle: const TextStyle(fontSize: 20)),
                    child: Text('+', style: TextStyle(fontSize: 20.0),),
                    onPressed: () {
                      _controller.text=_controller.text+"+";

                    },
                  ),
                ),

              ],
            ),
          ),

          Padding(
            padding:EdgeInsets.only(top:0,left:5),
            child:Row(
              children:[

                Container(
                  margin: EdgeInsets.all(5),
                  width:170,
                  child:TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        foregroundColor: Colors.yellow,
                        backgroundColor: Colors.green,
                        textStyle: const TextStyle(fontSize: 20)),
                    child: Text('0', style: TextStyle(fontSize: 20.0),),
                    onPressed: () {
                      _controller.text=_controller.text+"0";
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  width:80,
                  child:TextButton(
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
                  width:80,
                  child:TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        foregroundColor: Colors.yellow,
                        backgroundColor: Colors.green,
                        textStyle: const TextStyle(fontSize: 20)),
                    child: Text('=', style: TextStyle(fontSize: 20.0),),
                    onPressed: () {},
                  ),
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }

}