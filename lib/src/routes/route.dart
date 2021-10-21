

import 'package:flutter/cupertino.dart';
import 'package:proyecto_integrador_mobil/src/pages/login_page.dart';
import 'package:proyecto_integrador_mobil/src/pages/principal_page.dart';

Map<String,WidgetBuilder> getApplicationRoutes(){
  return <String, WidgetBuilder>{
    '/principal':(BuildContext context) => PrincipalPage(),
    '/login':(BuildContext context) => LoginPage(),
    
  };
}