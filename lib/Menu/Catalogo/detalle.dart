import 'package:flutter/material.dart';

class Detalle extends StatefulWidget {
  final nombre;
  final precio;
  final imagen;

  const Detalle({this.nombre, this.precio, this.imagen});

  @override
  State<Detalle> createState() => _DetalleState();
}

class _DetalleState extends State<Detalle> {
  get imagen => null;

  @override
  void setState(fn) {
    super.setState(fn);
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFD00202),
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.ac_unit_rounded),
                onPressed: null,
                color: Colors.white),
          ],
          title: Text('Detalle',
              style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                  color: Colors.black)),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          backgroundColor: Colors.transparent,
        ),
        body: ListView(padding: EdgeInsets.all(1.0), children: [
          Stack(
            children: [
              Positioned(
                top: 15.0,
                right: 40.0,
                bottom: 25,
                child: Container(
                  child: new Image.asset("assets/images/pizza-tocineta.png",
                      fit: BoxFit.contain),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0)),
                  ),
                  height: MediaQuery.of(context).size.height - 30,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height - 80.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
              ),

              /*
              Positioned(
                top: 1.0,
                right: 1.0,
                bottom: 5,
                child: Container(
                  child: new Image.asset(
                    "assets/images/Pizza-Jamon.png",
                    fit: BoxFit.contain,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.0),
                        bottomRight: Radius.circular(20.0)),
                  ),
                ),
                height: MediaQuery.of(context).size.height - 1.0,
                width: MediaQuery.of(context).size.width,
              ),*/

              /*  Positioned(
                  top: (MediaQuery.of(context).size.height / 2) + 30,
                  left: (MediaQuery.of(context).size.width / 2) - 47,
                  child: Hero(
                    tag: widget.imagen,
                    child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFE64EB),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.0),
                            ),
                            image: DecorationImage(
                                image: AssetImage(widget.imagen),
                                fit: BoxFit.cover)),
                        height: 200.0,
                        width: 200.0),
                  )),*/
              Positioned(
                  top: 2.0,
                  left: 2.0,
                  right: 2.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.nombre,
                        style: new TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40.0,
                            fontFamily: 'Satisfy',
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 28.0,
                      ),
                      Row(
                        children: [
                          Text(
                            'Precio: ',
                            style: new TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22.0,
                                color: Colors.black),
                          ),
                          Text(
                            widget.precio.toString(),
                            style: new TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22.0,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 18.0,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 400.0,
                      ),
                      Text('Ingredientes principales',
                          style: new TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Colors.black,
                              fontFamily: 'Satisfy')),
                      SizedBox(
                        height: 2.0,
                      ),
                      Text('Salsa de tomate',
                          style: new TextStyle(
                              //fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black)),
                      SizedBox(
                        height: 2.0,
                      ),
                      Text('Harina',
                          style: new TextStyle(
                              // fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black)),
                      SizedBox(
                        height: 2.0,
                      ),
                      Text('Mozzarella',
                          style: new TextStyle(
                              //  fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black)),
                      SizedBox(
                        height: 2.0,
                      ),
                      Text('Aceite',
                          style: new TextStyle(
                              // fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black)),
                      SizedBox(
                        height: 2.0,
                      ),
                      Text('Sal',
                          style: new TextStyle(
                              //fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black))
                    ],
                  ))
            ],
          )
        ]));
  }
}
