import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          Text('This is a home page')
        ],
      ),
    );
  }
}