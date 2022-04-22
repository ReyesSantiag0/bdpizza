// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures, prefer_is_empty, prefer_final_fields, camel_case_types, deprecated_member_use

import 'package:email_password/Menu/Carrito-Compras/Vista_Carro.dart';
import 'package:email_password/Menu/Catalogo/productos.dart';
import 'package:flutter/material.dart';
import 'package:email_password/Menu/Catalogo/detalle.dart';
import 'package:email_password/importaciones.dart';

class catalogo extends StatefulWidget {
  @override
  State<catalogo> createState() => _catalogoState();
}

class _catalogoState extends State<catalogo> {
  List<Productos> _productos = <Productos>[];
  List<Productos> _listacarro = <Productos>[];

  get child => null;

  @override
  void initState() {
    super.initState();
    _productosP();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        centerTitle: true,
        title: Text('RED PIZZA'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0, top: 8.0),
            child: GestureDetector(
              child: Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Icon(
                    Icons.shopping_cart,
                    size: 38,
                  ),
                  if (_listacarro.length > 0)
                    Padding(
                      padding: const EdgeInsets.only(left: 2.0),
                      child: CircleAvatar(
                        radius: 8.0,
                        backgroundColor: Colors.red[900],
                        foregroundColor: Colors.white,
                        child: Text(
                          _listacarro.length.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12.0),
                        ),
                      ),
                    ),
                ],
              ),
              onTap: () {
                if (_listacarro.isNotEmpty)
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => carro_compras(_listacarro),
                  ));
              },
            ),
          ),
        ],
      ),
      body: cuadroProductos(),
    );
  }

  GridView cuadroProductos() {
    return GridView.builder(
        padding: const EdgeInsets.all(4.0),
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: _productos.length,
        itemBuilder: (context, index) {
          final String imagen = _productos[index].image;
          var item = _productos[index];
          return Card(
            elevation: 4.0,
            child: Stack(
              fit: StackFit.loose,
              alignment: Alignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Image.asset(
                        "assets/images/$imagen",
                        fit: BoxFit.contain,
                      ),
                    ),
                    Text(item.nombre,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20.0)),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FlatButton(
                          child: Text("Mas"),
                          onPressed: () =>
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Detalle(
                                      nombre: item.nombre,
                                      precio: item.precio,
                                      // imagen: item.image
                                      imagen: item.image))),
                        ),
                        SizedBox(height: 25),
                        Text(
                          item.precio.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 7.0,
                              color: Colors.black),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(
                              right: 8.0,
                              bottom: 8.0,
                            ),
                            child: Align(
                                alignment: Alignment.bottomRight,
                                child: GestureDetector(
                                  child: (!_listacarro.contains(item))
                                      ? Icon(
                                          Icons.shopping_cart,
                                          color: Colors.blue,
                                          size: 38,
                                        )
                                      : Icon(
                                          Icons.shopping_cart,
                                          color: Colors.red,
                                          size: 38,
                                        ),
                                  onTap: () {
                                    setState(() {
                                      if (!_listacarro.contains(item))
                                        _listacarro.add(item);
                                      else
                                        _listacarro.remove(item);
                                    });
                                  },
                                )))
                      ],
                    )
                  ],
                )
              ],
            ),
          );
        });
  }

  void _productosP() {
    var list = <Productos>[
      Productos('Pizza Jamon', 'Pizza-Jamon.png', Colors.black, 42000, 1),
      Productos('Pizza Manzana', 'Pizza-manzana.png', Colors.black, 35000, 1),
      Productos('Pizza Mixta', 'Pizza-mixta.png', Colors.black, 35000, 1),
      Productos(
          'Pizza Napolitana', 'Pizza-napolitana.png', Colors.black, 45000, 1),
      Productos('Pizza Pollo', 'Pizza-Pollo.png', Colors.black, 25000, 1),
      Productos('Pizza Salami', 'Pizza-Salami.png', Colors.black, 38000, 1),
      Productos('Pizza Tocineta', 'Pizza-tocineta.png', Colors.black, 55000, 1),
      Productos('Pizza Vegetal', 'Pizza-vegetales.png', Colors.black, 35000, 1),
      Productos('Pizza Jamon x2', 'Pizza-Jamon.png', Colors.black, 82000, 1),
      Productos(
          'Pizza Manzana x2', 'Pizza-manzana.png', Colors.black, 75000, 1),
      Productos('Pizza Mixta x2', 'Pizza-mixta.png', Colors.black, 55000, 1),
      Productos('Pizza Napolitana x2', 'Pizza-napolitana.png', Colors.black,
          80000, 1),
    ];

    setState(() {
      _productos = list;
    });
  }
}
