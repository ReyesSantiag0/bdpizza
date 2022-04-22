// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, deprecated_member_use, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Perfil extends StatefulWidget {
  @override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  //final ValueChanged<String> onChanged;
  /*TextEditingController nombrecontrolador = TextEditingController();
   TextEditingController apellidocontrolador = TextEditingController();
   TextEditingController correocontrolador = TextEditingController();
   TextEditingController concontrolador = TextEditingController();
   */

  bool passwordvisible = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PantallaEdit(),
    );
  }
}

class PantallaEdit extends StatefulWidget {
  PantallaEdit({Key? key}) : super(key: key);

  @override
  State<PantallaEdit> createState() => _PantallaEditState();
}

class _PantallaEditState extends State<PantallaEdit> {
  String nombre = ' ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nombre'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(nombre),
            RaisedButton(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
                  child: Text('Editar datos'),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 5.0,
                color: Colors.green,
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(
                    builder: (context) => EditarPan(nombre),
                  ))
                      .then((result) {
                    if (result != null) {
                      setState(() {
                        nombre = result;
                      });
                    }
                  });
                })
          ],
        ),
      ),
    );
  }
}

class EditarPan extends StatefulWidget {
  final String Nombre;
  EditarPan(this.Nombre);
  @override
  State<EditarPan> createState() => _EditarPanState();
}

class _EditarPanState extends State<EditarPan> {
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    _controller = TextEditingController(text: widget.Nombre);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nombre'),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: _controller,
            ),
            RaisedButton(
              child: Text('Guardar datos'),
              onPressed: () {
                Navigator.of(context).pop(_controller.text);
              },
            )
          ],
        ),
      ),
    );
  }
}
