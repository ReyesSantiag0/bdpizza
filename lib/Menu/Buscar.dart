import 'package:flutter/material.dart';

class Buscar extends StatefulWidget {
  @override
  State<Buscar> createState() => _BuscarState();
}

class _BuscarState extends State<Buscar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          centerTitle: true,
          title: Text('RED PIZZA'),
        ),
        body: Center(
          child: Container(
            child: Text('Estas en el buscador'),
          ),
        ),
      ),
    );
  }
}