import 'package:flutter/material.dart';

class ExampleStatefulPage extends StatefulWidget{
  @override
  _ExplameStatefulPageState createState()=> _ExplameStatefulPageState();

}

class _ExplameStatefulPageState extends State<ExampleStatefulPage>{
  @override
  Widget build(BuildContext context) {
    print('Reconstruir widget hijo');
    return Container();
  }

}