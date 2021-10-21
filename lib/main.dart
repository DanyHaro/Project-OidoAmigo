import 'package:flutter/material.dart';
import 'package:proyecto_integrador_mobil/src/pages/principal_page.dart';
import 'package:proyecto_integrador_mobil/src/routes/route.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
      initialRoute: '/principal',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings){

        return MaterialPageRoute(
          builder: (BuildContext context) => PrincipalPage() //si una ruta está mal lo llevara a LoginPage()
        );
      },
    );
  }
}