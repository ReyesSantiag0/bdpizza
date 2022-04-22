import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:email_password/Menu/Buscar.dart';
import 'package:email_password/Menu/Catalogo/catalogo.dart';
import 'package:email_password/Menu/Home.dart';
import 'package:email_password/Menu/perfil_usuario.dart';
import 'package:flutter/material.dart';
import 'package:email_password/Menu/promociones.dart';
import 'package:email_password/importaciones.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int index = 0;
  //Aqui se colocan las vistas de cada pantalla
  final pantallas = [
    Home(),
    Promo(),
    Buscar(),
    catalogo(),
    Perfil(),
  ];

  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pantallas[index],
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 60.0,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.monetization_on_outlined, size: 30),
          Icon(Icons.search, size: 30),
          Icon(Icons.local_pizza_outlined, size: 30),
          Icon(Icons.perm_identity, size: 30),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.red,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            this.index = index;
          });
        },
        letIndexChange: (index) => true,
      ),
    );
  }
}
