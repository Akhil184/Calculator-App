import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Calculator'),
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

  TextEditingController _controller = TextEditingController();


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Column(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: '',
                  hintText: '',
              ),
            ),

    Padding(
    padding:EdgeInsets.only(top:40),
    child:Row(
            children:[

            Container(
              margin: EdgeInsets.all(5),
              child:TextButton(
                style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(10),
                    foregroundColor: Colors.yellow,
                    backgroundColor: Colors.green,
                    textStyle: const TextStyle(fontSize: 20)),
                child: Text('1', style: TextStyle(fontSize: 20.0),),
                onPressed: () {
                  setState(() {
                    _controller.text="1";

                  });
                },
              ),
            ),
    Container(
    margin: EdgeInsets.all(5),
    child:TextButton(
      style: TextButton.styleFrom(
          padding: const EdgeInsets.all(10),
          foregroundColor: Colors.yellow,
          backgroundColor: Colors.green,
          textStyle: const TextStyle(fontSize: 20)),
    child: Text('2', style: TextStyle(fontSize: 20.0),),
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
                child:TextButton(
                  style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(10),
                      foregroundColor: Colors.yellow,
                      backgroundColor: Colors.green,
                      textStyle: const TextStyle(fontSize: 20)),
                  child: Text('3', style: TextStyle(fontSize: 20.0),),
                  onPressed: () {},
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                child:TextButton(
                  style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(10),
                      foregroundColor: Colors.yellow,
                      backgroundColor: Colors.green,
                      textStyle: const TextStyle(fontSize: 20)),
                  child: Text('4', style: TextStyle(fontSize: 20.0),),
                  onPressed: () {},
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                child:TextButton(
                  style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(10),
                      foregroundColor: Colors.yellow,
                      backgroundColor: Colors.green,
                      textStyle: const TextStyle(fontSize: 20)),
                  child: Text('+', style: TextStyle(fontSize: 20.0),),
                  onPressed: () {
                    setState(() {
                      _controller.text="+";

                    });
                  },
                ),
              ),
          ],
    ),
      ),
            Padding(
              padding:EdgeInsets.only(top:0),
              child:Row(
                children:[

                  Container(
                    margin: EdgeInsets.all(5),
                    child:TextButton(
                      style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          foregroundColor: Colors.yellow,
                          backgroundColor: Colors.green,
                          textStyle: const TextStyle(fontSize: 20)),
                      child: Text('5', style: TextStyle(fontSize: 20.0),),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child:TextButton(
                      style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          foregroundColor: Colors.yellow,
                          backgroundColor: Colors.green,
                          textStyle: const TextStyle(fontSize: 20)),
                      child: Text('6', style: TextStyle(fontSize: 20.0),),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child:TextButton(
                      style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          foregroundColor: Colors.yellow,
                          backgroundColor: Colors.green,
                          textStyle: const TextStyle(fontSize: 20)),
                      child: Text('7', style: TextStyle(fontSize: 20.0),),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child:TextButton(
                      style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          foregroundColor: Colors.yellow,
                          backgroundColor: Colors.green,
                          textStyle: const TextStyle(fontSize: 20)),
                      child: Text('8', style: TextStyle(fontSize: 20.0),),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child:TextButton(
                      style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          foregroundColor: Colors.yellow,
                          backgroundColor: Colors.green,
                          textStyle: const TextStyle(fontSize: 20)),
                      child: Text('-', style: TextStyle(fontSize: 20.0),),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:EdgeInsets.only(top:0),
              child:Row(
                children:[

                  Container(
                    margin: EdgeInsets.all(5),
                    child:TextButton(
                      style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          foregroundColor: Colors.yellow,
                          backgroundColor: Colors.green,
                          textStyle: const TextStyle(fontSize: 20)),
                      child: Text('9', style: TextStyle(fontSize: 20.0),),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child:TextButton(
                      style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          foregroundColor: Colors.yellow,
                          backgroundColor: Colors.green,
                          textStyle: const TextStyle(fontSize: 20)),
                      child: Text('10', style: TextStyle(fontSize: 20.0),),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child:TextButton(
                      style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          foregroundColor: Colors.yellow,
                          backgroundColor: Colors.green,
                          textStyle: const TextStyle(fontSize: 20)),
                      child: Text('/', style: TextStyle(fontSize: 20.0),),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child:TextButton(
                      style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          foregroundColor: Colors.yellow,
                          backgroundColor: Colors.green,
                          textStyle: const TextStyle(fontSize: 20)),
                      child: Text('*', style: TextStyle(fontSize: 20.0),),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child:TextButton(
                      style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          foregroundColor: Colors.yellow,
                          backgroundColor: Colors.green,
                          textStyle: const TextStyle(fontSize: 20)),
                      child: Text('%', style: TextStyle(fontSize: 20.0),),
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
