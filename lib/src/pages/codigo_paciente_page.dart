import 'package:flutter/material.dart';

class CodigoPacientePage extends StatefulWidget {
  // CodigoPacientePage({Key? key}) : super(key: key);

  @override
  _CodigoPacientePageState createState() => _CodigoPacientePageState();
}

class _CodigoPacientePageState extends State<CodigoPacientePage> {
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
              FadeInImage(
                  placeholder: AssetImage('assets/jar-loading.gif'),
                  image: NetworkImage('https://www.upeu.edu.pe/wp-content/uploads/2021/05/oido-AMIGO-LOGOTIPO1-300x99.png')
              ),
              SizedBox(
                height: 40.0,
              ),
              codigo(),
              SizedBox(
                height: 40.0,
              ),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Container(
                  child: TextButton(
                    child: Text("Buscar", style: TextStyle(color: Colors.white, fontSize: 20.0),),
                    onPressed: (){
                        Navigator.pushNamed(context, '/login');
                    },
                  ),
                  width: 150.0,
                  color: Colors.orange.shade300,
                ),
              )
              // Container(
              //   height: 190.0 ,
              //   child: FadeInImage(
              //     placeholder: AssetImage('assets/jar-loading.gif'),
              //     image: NetworkImage('https://redpsi.es/wp-content/uploads/2018/09/terapia-psicol%C3%B3gica.png')
              //   )
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Widget codigo() {
    return Container(
        // margin: EdgeInsets.all(10.0),
        child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        // hintText: 'Escriba su usuario',
        labelText: 'Codigo (*)',
        suffixIcon: Icon(Icons.account_circle),
      ),
    ));
  }

}