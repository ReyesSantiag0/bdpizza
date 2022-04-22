import 'package:flutter/material.dart';

class descrip extends StatefulWidget {
  @override
  State<descrip> createState() => _descripState();
}

class _descripState extends State<descrip> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color(0xFFF0000),
          appBar: AppBar(
          backgroundColor: Colors.red[900],
          centerTitle: true,
          title: Text('RED PIZZA'),
        ),
          body: ListView(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            children: [
              SizedBox(
                height: 25.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    Text(
                      "Catalogo de compra",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: MediaQuery.of(context).size.height - 105.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(60.0),
                        bottomLeft: Radius.circular(60.0))),
                child: ListView(
                  padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 30.0),
                      child: Container(
                          height: MediaQuery.of(context).size.height - 200.0,
                          child: GridView.count(
                            crossAxisCount: 2,
                            mainAxisSpacing: 0.2,
                            childAspectRatio: 0.8,
                            children: [],
                          )),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }

  Widget pizzas(String nombre, int precio, String image) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: Container(
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          color: Color(0xFFE6E4EB),
          elevation: 5.0,
          child: new Column(children: <Widget>[
            Hero(
                tag: image,
                child: Material(
                  child: Container(
                    color: Color(0xFFE6E4EB),
                    child: InkWell(
                      onTap: () {},
                    ),
                  ),
                )),
            Padding(
              padding: EdgeInsets.all(3.0),
            ),
            Text(nombre,
                style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.black)),
            Padding(
              padding: EdgeInsets.all(3.0),
            ),
            Text(precio.toString(),
                style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.black)),
          ]),
        ),
      ),
    );
  }
}
