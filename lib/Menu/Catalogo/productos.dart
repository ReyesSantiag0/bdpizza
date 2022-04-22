import 'package:flutter/material.dart';

//Se crean pizzas de forma local
class Productos{

  final String nombre;
  final String image;
  final Color color;
  final int precio;
  int cantidad=0;

   Productos(
    this.nombre, this.image, this.color, this.precio,this.cantidad
    
    );

}