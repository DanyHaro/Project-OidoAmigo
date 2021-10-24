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
                height: 105.0,
              ),
              FadeInImage(
                  placeholder: AssetImage('assets/jar-loading.gif'),
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
              botonIniciarSesion(context),
              SizedBox(
                height: 8.0 ,
              ),
              Container(
                  height: 170.0,
                  child: FadeInImage(
                      placeholder: AssetImage('assets/jar-loading.gif'),
                      image: NetworkImage(
                          'https://redpsi.es/wp-content/uploads/2018/09/terapia-psicol%C3%B3gica.png'))),
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

  Widget botonIniciarSesion(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
      child: Container(
        width: 200.0,
        child: TextButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Iniciar Sesión",
                style: TextStyle(color: Colors.white),
              ),
              Icon(Icons.login, color: Colors.white,)
            ],
          ),
          onPressed: () {
            Navigator.pushNamed(context,'/derivador');
          },
          style: TextButton.styleFrom(
            textStyle: const TextStyle(fontSize: 18),
          ),
        ),
        color: Color.fromRGBO(24, 150, 156, 1),
      ),
    );
  }
}
