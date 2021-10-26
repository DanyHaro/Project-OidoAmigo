import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class PersonalAsignarPage extends StatelessWidget {
  const PersonalAsignarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      duration: Duration(milliseconds: 500),
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: (){
      
              }, 
              icon: Icon(Icons.search)
            )
          ],
          title: Text("Asignar a ..."),
        ),
        body: ListView(
          children: [
            ListTile(
              title: Text("Dany Richard Haro"),
              leading: Icon(Icons.person),
              trailing: Icon(Icons.send_and_archive_outlined),
            ),
            SizedBox(
              height: 10.0,
            ),
            ListTile(
              title: Text("Dany Richard Haro"),
              leading: Icon(Icons.person_add_alt_rounded),
              trailing: Icon(Icons.arrow_right_alt),
            ),
            SizedBox(
              height: 10.0,
            ),
            ListTile(
              title: Text("Dany Richard Haro"),
              leading: Icon(Icons.person_add_alt_rounded),
              trailing: Icon(Icons.arrow_right_alt),
            ),
            SizedBox(
              height: 10.0,
            ),
            ListTile(
              title: Text("Dany Richard Haro"),
              leading: Icon(Icons.person_add_alt_rounded),
              trailing: Icon(Icons.arrow_right_alt),
            ),
            SizedBox(
              height: 10.0,
            ),
            ListTile(
              title: Text("Dany Richard Haro"),
              leading: Icon(Icons.person_add_alt_rounded),
              trailing: Icon(Icons.arrow_right_alt),
            ),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
