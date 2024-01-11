import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget{
  final Function(int) callback;
  int counter;

  PageTwo({required this.counter, required this.callback});

  @override
  _PageTwoState createState()=> _PageTwoState();

}

class _PageTwoState extends State<PageTwo>{

  void _incrementCounter(){
    setState(() {
      widget.counter++;
    });
    widget.callback(widget.counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página 2'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.of(context).pop(widget.counter);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                'Presiona el botón varias veces'
            ),
            Text(
              '${widget.counter}',
              style: Theme.of(context).textTheme.headlineLarge,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Presiona para incrementar',
        child: Icon(Icons.add),
      ),
    );
  }

}