
import 'package:flutter/material.dart';


void main(){
  runApp(Aplicacion02());
}

////////////////////////////////////////////////

class Aplicacion02 extends StatelessWidget {
  const Aplicacion02({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Cuerpo(),
    );
  }
}



/////////////////////////////////////////////////
class Cuerpo extends StatefulWidget {
  const Cuerpo({super.key});

  @override
  State<Cuerpo> createState() => _CuerpoState();
}

class _CuerpoState extends State<Cuerpo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Titulo 2"),

      ),
      body: Body(),
    );
  }
}
Widget Body(){
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage("https://img.freepik.com/foto-gratis/pintura-lago-montana-montana-al-fondo_188544-9126.jpg")

      )
    ),
    child: Column(
      children: [
        Text("Login",style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 117, 108, 218) ),),
        Usuario(),
        Password()
      ],
    ),
  );
}

Widget Usuario(){
  return (
  Container(
    padding: EdgeInsets.all(10),
    child: TextField(
        decoration: InputDecoration(
          hintText: "Ingresar Usuario",
          fillColor: Color(0xffb3a2b9),
          filled: true
        ),
      ),
    )
  );
}
  Widget Password(){
return( 
    Container(
      padding: EdgeInsets.all(10),

      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: "Ingresar Password",
          fillColor: Colors.yellow,
          filled: true,
        ), // InputDecoration
keyboardType: TextInputType.number,
      ), // TextField

    ) // Container

  );
}

Widget Boton() {
  return (
    Container(
      child: ElevatedButton(
        onPressed: () {
          // Implement button action here
        },
        child: Text("LOGIN"),
      ),
    )
  );
}
Widget Signup() {
  return Container(
    padding: EdgeInsets.all(10),
    child: Column(
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: "Nombre de Usuario",
            fillColor: Color(0xffb3a2b9),
            filled: true,
          ),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: "Correo Electronico",
            fillColor: Color(0xffb3a2b9),
            filled: true,
          ),
        ),
        // ... Repeat for password field (same as Login)
      ],
    ),
  );
}
