import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:animate_do/animate_do.dart';


class DerivadorPage extends StatefulWidget {
  // DerivadorPage({Key? key}) : super(key: key);

  @override
  _DerivadorPageState createState() => _DerivadorPageState();
}

class _DerivadorPageState extends State<DerivadorPage> {
  //CREAMOS UNA INSTANCIA DE LA CLASE CON GETX
  Controlador instanciaControlador = Get.put(Controlador());

  ///////////// VARIABLES
  List<String> _filtros = ['Grave', 'Leve', 'Recientes'];
  bool estado = true;
  // String _opcionSeleccionada = 'Grave';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: estado ? AppBar(
        backgroundColor: Color.fromRGBO(117, 206, 209, 1),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "FICHAS",
          style: TextStyle(color: Color.fromRGBO(250, 250, 250 , 1)),
        ),
      ) : newappBar(context),

      //REEMPLAZAR EL ListView por ListView.builder cuando se tenga data real.
      body: Column(
        children: [
          SizedBox(
            height: 15.0,
          ),

          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            child: Container(
              child: Center(
                  child: Text(
                "FICHAS DE PACIENTES",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              )),
              color: Color.fromRGBO(48, 43, 44, 1),
              height: 35.0,
              width: 250.0,
            ),
          ),

          SizedBox(
            height: 15.0,
          ),

          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            child: Container(
              // color: Colors.greenAccent,
              alignment: Alignment(-0.7, 0),
              child: DropdownButton(
                hint: Text('Filtrar por ... '),
                // value: _opcionSeleccionada,
                items: getOpcionesFiltros(),
                onChanged: (opcion) {
                  log('OPCION SELECIONADA: $opcion');
                },
              ),
            ),
          ),

          SizedBox(
            height: 30.0,
          ),

          /////// TARJETAS

          Expanded(
            child: Container(
              color: Color.fromRGBO(229, 246, 254, 1),
              child: ListView(
                padding: EdgeInsets.all(10.0),
                children: [
                  SizedBox(
                    height: 10.0,
                  ),
                  // InkWell puede ser reemplazado por un ElevatedButton para tener el metodo onLongPress con su animaci??n
                  InkWell(
                    onLongPress: () {
                      log("MANTENIENDO");
                      setState(() {    
                        estado = false;
                      });
                      // Navigator.pushNamed(context, '/personalAsignar');
                      // estado = true;
                      // setState(() {

                      // });
                    },
                    child: Card(
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.person),
                            title: Text('Christian Atencio Pe??a'),
                            subtitle: Text(
                                'Necesito ayuda Psicologica porque me dejo melany :C'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),

      /////// BOTONES DE NAVEGACI??N

      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.description), label: 'Fichas'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Psicologos'),
        BottomNavigationBarItem(icon: Icon(Icons.backup), label: 'Mapas'),
      ]),
    );
  }

  //METODOS

  List<DropdownMenuItem<String>> getOpcionesFiltros() {
    List<DropdownMenuItem<String>> listadrop = [];
    _filtros.forEach((power) {
      listadrop.add(DropdownMenuItem(
        child: Text(power),
        value: power,
      ));
    });

    return listadrop;
  }

  ////////////////// WIDGET CON EVENTO /////

}

//// CLASE CON GETX
class Controlador extends GetxController {
  Card tarjetas() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.lock_clock_outlined),
            title: Text('Dany Haro'),
            subtitle:
                Text('Necesito ayuda Psicologica porque me dejo melany :C'),
          ),
        ],
      ),
    );
  }
}

PreferredSizeWidget newappBar(BuildContext context) {
  return AppBar(
    backgroundColor: Color.fromRGBO(35, 145, 148, 1),
    actions: [
      FadeInDown(
        duration: Duration(milliseconds: 190),
        child: IconButton(
          onPressed: (){
            Navigator.pushNamed(context, '/personalAsignar');
          },
          icon: Icon(Icons.redo_rounded)
        ),
      ),
      FadeInDown(
        duration: Duration(milliseconds: 190),
        child: IconButton(
          onPressed: (){
      
          },
          icon: Icon(Icons.home)
        ),
      ),
    ],
    elevation: 8,
    centerTitle: true,
    title: Text(
      "FICHAS",
      style: TextStyle(color: Color.fromRGBO(250, 250, 250, 1)),
    ),
  );
}
