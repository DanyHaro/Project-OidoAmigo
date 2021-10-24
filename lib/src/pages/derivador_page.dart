import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
  Icon icono = Icon(Icons.lock_clock_outlined);
  bool estado = false;
  // String _opcionSeleccionada = 'Grave';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: (){

            }, 
            icon: estado ? icono : Icon(Icons.account_balance_outlined)
          )
        ],
        centerTitle: true,
        title: Text("FICHAS DE PACIENTES", style: TextStyle(color: Color.fromRGBO(142, 219, 255, 1)),),
      ),
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
                  // InkWell puede ser reemplazado por un ElevatedButton para tener el metodo onLongPress con su animación
                  InkWell(
                    onTap: () {
                      log("MANTENIENDO");
                      Navigator.pushNamed(context, '/personalAsignar');
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
                            title: Text('Christian Atencio Peña'),
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

      /////// BOTONES DE NAVEGACIÓN

      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.description), 
          label: 'Fichas'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person), 
          label: 'Psicologos'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.backup), 
          label: 'Mapas'
        ),
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
}

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
