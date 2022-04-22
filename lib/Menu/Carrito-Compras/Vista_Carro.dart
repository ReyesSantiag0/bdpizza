// ignore_for_file: prefer_const_constructors

import 'package:email_password/Menu/Catalogo/productos.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:email_password/importaciones.dart';

class carro_compras extends StatefulWidget {
  final List<Productos> carro;

  carro_compras(this.carro);

  @override
  State<carro_compras> createState() => _carro_comprasState(this.carro);
}

class _carro_comprasState extends State<carro_compras> {
  _carro_comprasState(this.carro);
  final _scrollController = ScrollController();
  var _firstScroll = true;
  bool enabled = false;
  List<Productos> carro;

  Container pagoTotal(List<Productos> carro) {
    return Container(
      alignment: Alignment.centerRight,
      padding: EdgeInsets.only(left: 120),
      height: 70,
      width: 400,
      color: Colors.grey,
      child: Row(
        children: [
          Text(
            'Total: \$${valorTot(carro)}',
            style: new TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
                color: Colors.black),
          )
        ],
      ),
    );
  }

  String valorTot(List<Productos> listaproductos) {
    double total = 0.0;
    for (int i = 0; i < listaproductos.length; i++) {
      total = total + listaproductos[i].precio * listaproductos[i].cantidad;
    }
    return total.toStringAsFixed(2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.restaurant_menu),
              color: Colors.white)
        ],
        title: Text(
          'Detalle',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
            setState(() {
              carro.length;
            });
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
        ),
      ),
      body: GestureDetector(
        onVerticalDragUpdate: (details) {
          if (enabled && _firstScroll) {
            _scrollController
                .jumpTo(_scrollController.position.pixels - details.delta.dy);
          }
        },
        onVerticalDragEnd: (details) {
          if (enabled) _firstScroll = false;
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: carro.length,
                  itemBuilder: (context, index) {
                    final String imagen = carro[index].image;
                    var item = carro[index];
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 2.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                      child: Container(
                                    width: 100,
                                    height: 100,
                                    child: new Image.asset(
                                        "assets/images/$imagen",
                                        fit: BoxFit.contain),
                                  )),
                                  Column(
                                    children: [
                                      Text(
                                        item.nombre,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 170,
                                            height: 40,
                                            decoration: BoxDecoration(
                                                color: Colors.red,
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 6.0,
                                                    color: Colors.blue,
                                                    offset: Offset(0.0, 1.0),
                                                  )
                                                ],
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(50.0),
                                                )),
                                            margin: EdgeInsets.only(top: 20.0),
                                            padding: EdgeInsets.all(2.0),
                                            child: new Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                SizedBox(
                                                  height: 9.0,
                                                ),
                                                IconButton(
                                                  onPressed: () {
                                                    removerProd(index);

                                                    valorTot(carro);
                                                  },
                                                  icon: Icon(Icons.remove),
                                                  color: Colors.white,
                                                ),
                                                Text(
                                                  '${carro[index].cantidad}',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 22.0,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                IconButton(
                                                  onPressed: () {
                                                    adicionarProd(index);
                                                    valorTot(carro);
                                                  },
                                                  icon: Icon(Icons.add),
                                                  color: Colors.white,
                                                ),
                                                SizedBox(
                                                  height: 8.0,
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 9.0,
                                  ),
                                  Text(
                                    item.precio.toString(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                        )
                      ],
                    );
                  }),
              SizedBox(
                width: 10.0,
              ),
              pagoTotal(carro),
              SizedBox(
                width: 20.0,
              ),
              Container(
                height: 100,
                width: 200,
                padding: EdgeInsets.only(top: 50),
                child: new RaisedButton(
                  textColor: Colors.white,
                  color: Colors.red,
                  child: Text('Pagar'),
                  onPressed: () => {
                    Pedido(),
                    // AlertDialog(
                    //   title: Text('Confirmacion'),
                    //   content: Text(
                    //       "Está a punto de realizar una compra,¿Desea continuar?"),
                    //   actions: <Widget>[
                    //     FlatButton(
                    //         child: Text("Aceptar"),
                    //         textColor: Colors.blue,
                    //         onPressed: () {
                    //           Pedido();
                    //         }),
                    //     FlatButton(
                    //         child: Text("Cancelar"),
                    //         textColor: Colors.red,
                    //         onPressed: () {
                    //           Navigator.of(context).pop();
                    //         }),
                    //   ],
                    // ),
                    print('Funciona')
                  },
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void Pedido() async {
    String pedido = '';
    String fecha = DateTime.now().toString();
    pedido = pedido + "Fecha: " + fecha.toString();
    pedido = pedido + "\n";
    pedido = pedido + "RED PIZZA S.A.S";
    pedido = pedido + "\n";
    pedido = pedido + "Cliente:";
    pedido = pedido + "\n";

    for (int i = 0; i < carro.length; i++) {
      pedido = '$pedido' +
          "\n" +
          "Producto: " +
          carro[i].nombre +
          "\n" +
          "Cantidad: " +
          carro[i].cantidad.toString() +
          "\n" +
          "Precio: " +
          carro[i].precio.toString() +
          "\n";
      //await launch("https://wa.me/${573116457949}?text=$pedido");
    }
  }

  adicionarProd(int index) {
    setState(() {
      carro[index].cantidad++;
    });
  }

  removerProd(int index) {
    setState(() {
      carro[index].cantidad--;
    });
  }
}
