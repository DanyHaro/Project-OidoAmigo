import 'package:flutter/material.dart';
import 'package:proyecto_integrador_mobil/src/widgets/form_paciente.dart';

class PrincipalPage extends StatefulWidget {

  @override
  _PrincipalPageState createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
  @override
  Widget build(BuildContext context) {

    // final id = 'login_id';

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(30, 92, 158 ,1),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              Container(
                child:  Image(image: NetworkImage('https://www.upeu.edu.pe/wp-content/uploads/2021/05/oido-AMIGO-LOGOTIPO1-300x99.png')),
                margin: EdgeInsetsDirectional.fromSTEB(0, 50.0, 50.0, 50.0),
              ),
              Text.rich(
                TextSpan(text: "Atención psicológica virtual gratuita."),
                style: TextStyle(fontSize: 35.0,color: Colors.white),
              ),
              SizedBox(
                height: 35.0,
              ),
              ClipRRect(
                child: Image(image: NetworkImage("https://img.freepik.com/vector-gratis/sesion-individual-psicologo-color-plano-tratamiento-problemas-salud-mental-terapia-psicologica-personajes-rostro-dibujos-animados-2d-sala-consulta-fondo_151150-2890.jpg?size=626&ext=jpg")),
                borderRadius: BorderRadius.all(Radius.circular(150.0))
              ),
              SizedBox(
                height: 40.0,
              ),

              //BOTONES

              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    child: Container(
                      child: TextButton(
                        child: Text("Soy Psicologo", style: TextStyle(color: Colors.white),),
                        onPressed: (){
                          Navigator.pushNamed(context, '/login');
                        },
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                      ),
                      color: Colors.orange.shade300,
                    ),
                  ),
                  Expanded(child: Container()),
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    child: Container(
                      child: TextButton(
                        child: Text("Soy paciente", style: TextStyle(color: Colors.white),),
                        onPressed: (){
                          
                        },
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                      ),
                      color: Color.fromRGBO(24, 150, 156, 1),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40.0 ,),

              //FORMULARIO 
               
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  width: 400.0,
                  height: 850.0,
                  color: Color.fromRGBO(246, 248, 248, 0.5),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "¡Estamos aquí para ti!",
                        style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "¡Por favor complete los datos para poder contactarnos contigo lo más pronto posible",
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        child: FormPaciente(),
                      )

                    ],
                  ),
                ),
              ),
              
              
              Container(
                color: Color.fromRGBO(22, 73, 162, 1),
                height: 80.0,
                child: Text("holaaaa"),
              )
            ],
          ),
        )
      ),
    );
  }
}
