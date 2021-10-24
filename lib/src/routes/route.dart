

import 'package:flutter/cupertino.dart';
import 'package:proyecto_integrador_mobil/src/pages/codigo_paciente_page.dart';
import 'package:proyecto_integrador_mobil/src/pages/derivador_page.dart';
import 'package:proyecto_integrador_mobil/src/pages/login_page.dart';
import 'package:proyecto_integrador_mobil/src/pages/personal_asignar_page.dart';
import 'package:proyecto_integrador_mobil/src/pages/principal_page.dart';

Map<String,WidgetBuilder> getApplicationRoutes(){
  return <String, WidgetBuilder>{
    '/principal':(BuildContext context) => PrincipalPage(),
    '/login':(BuildContext context) => LoginPage(),
    '/codigopaciente':(BuildContext context) => CodigoPacientePage(),
    '/derivador':(BuildContext context) => DerivadorPage(),
    '/personalAsignar':(BuildContext context) => PersonalAsignarPage(),


    
  };
}