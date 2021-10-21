import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  // const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10.0),
          padding: EdgeInsets.symmetric(horizontal: 50.0),
          // color: Colors.green.shade300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 150.0 ,
              ),
              Image(
                  image: NetworkImage(
                      'https://www.upeu.edu.pe/wp-content/uploads/2021/05/oido-AMIGO-LOGOTIPO1-300x99.png')),
              SizedBox(
                height: 40.0,
              ),
              username(),
              SizedBox(
                height: 30.0,
              ),
              password(),
              SizedBox(
                height: 40.0,
              ),
              Container(
                height: 190.0 ,
                child: Image(
                  image: NetworkImage('https://redpsi.es/wp-content/uploads/2018/09/terapia-psicol%C3%B3gica.png')
                )
              ),
            ],
          ),
        ),
      ),
    );
  }

  //////////////////////////////

  Widget username() {
    return Container(
        // margin: EdgeInsets.all(10.0),
        child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        // hintText: 'Escriba su usuario',
        labelText: 'Usuario (*)',
        suffixIcon: Icon(Icons.account_circle),
      ),
    ));
  }

  /////////////////////////////////

  Widget password() {
    return Container(
        // margin: EdgeInsets.all(10.0),
        child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        // hintText: 'Escriba su usuario',
        labelText: 'Contraseña (*)',
        suffixIcon: Icon(Icons.password),
      ),
    ));
  }
}
