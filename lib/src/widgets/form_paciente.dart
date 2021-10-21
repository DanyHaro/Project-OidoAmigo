import 'package:flutter/material.dart';

class FormPaciente extends StatefulWidget {
  FormPaciente({Key? key}) : super(key: key);

  @override
  _FormPacienteState createState() => _FormPacienteState();
}

class _FormPacienteState extends State<FormPaciente> {

  bool bloquearcheckbox = false;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NombrePaciente(),
        SizedBox(height: 20.0,),
        ApellidoPaciente(),
        SizedBox(height: 20.0,),
        CelularPaciente(),
        SizedBox(height: 20.0,),
        PaisCiudad(),
        SizedBox(height: 20.0,),
        Motivo(),
        SizedBox(height: 20.0,),
        checkPolitica(),
        SizedBox(height: 10.0,),
        InputBoton()

      ],
    );
  }
  Widget checkPolitica(){
    return CheckboxListTile(
      title: Text("Acepto las politicas de privacidad y uso de datos", style: TextStyle(color: Colors.white),),
      value: bloquearcheckbox, 
      onChanged: (_){
        setState(() {
          bloquearcheckbox = true;
        });
      }
    );
  } 
}





////////////////////////////////////////////////////////////////////////////////////////////////

class NombrePaciente extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0)
          ),
          // hintText: 'Escriba su usuario',
          labelText: 'Nombres (*)',
          suffixIcon: Icon(Icons.account_circle),
        ),
      )
    );
  }
}

////////////////////////////////////////////////////////////////////////////////////////////////

class ApellidoPaciente extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          // hintText: 'Escriba su contraseña',
          labelText: 'Apellidos (*)',
          suffixIcon: Icon(Icons.vpn_key)

        ),
      ),
    );
  }
}

////////////////////////////////////////////////////////////////////////////////////////////////

class CelularPaciente extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          // hintText: 'Escriba su contraseña',
          labelText: 'Número de celular (*)',
          suffixIcon: Icon(Icons.vpn_key)

        ),
      ),
    );
  }
}

//////////////////////////////////////////////////

class PaisCiudad extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          // hintText: 'Escriba su contraseña',
          labelText: 'País/Ciudad (*)',
          suffixIcon: Icon(Icons.vpn_key)

        ),
      ),
    );
  }
}

////////////////////////////////////////////////////////

class Motivo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          // hintText: 'Escriba su contraseña',
          labelText: 'Cuéntenos brevemente tu motivo de consulta (*)',
          suffixIcon: Icon(Icons.vpn_key)

        ),
      ),
    );
  }
}



////////////////////////////////////////////////////////////////////////////////////////////////

class InputBoton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 80.0,vertical: 15.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size.fromHeight(45.0),
              primary: Color.fromRGBO(142, 35, 61 , 1),
              shape: StadiumBorder(),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Enviar',style: TextStyle(fontSize: 18.0),),
                SizedBox(width: 10.0,),
                Icon(Icons.send)
              ],
            ),
            onPressed: (){
              
            },
            
          ),
        );
      }
    );
  }
}