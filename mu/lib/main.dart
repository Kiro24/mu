import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mu',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  Widget build(BuildContext context) {
    if (_counter > 9 || _counter < 0) {
      _counter = 0;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Mu'),
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width / 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${_counter}',
                style: TextStyle(fontSize: 95.0),
              ),
              SizedBox(
                height: 25.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      setState(() => _counter++);
                    },
                    icon: Icon(Icons.add),
                    label: Text("INCREMENT"),
                  ),
                  SizedBox(height: 8.0),
                  OutlinedButton(
                    onPressed: () {
                      setState(() => _counter = 0);
                    },
                    child: Text("RESET"),
                  ),
                  SizedBox(height: 8.0),
                  ElevatedButton.icon(
                    onPressed: () {
                      setState(() => _counter--);
                    },
                    icon: Icon(Icons.remove),
                    label: Text("DECREMENT"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
