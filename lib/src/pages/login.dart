import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "¿Aún no tienes cuenta?",
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, "register");
                },
                child: Text("Crear una cuenta"),
                textColor: Colors.lightBlue,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _body() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Iniciar Sesión",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          TextFormField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                labelStyle: TextStyle(color: Colors.grey),
                labelText: "Email",
                prefixIcon: Icon(Icons.email),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey))),
          ),
          SizedBox(
            height: 20.0,
          ),
          TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  labelStyle: TextStyle(color: Colors.grey),
                  labelText: "Contraseña",
                  prefixIcon: Icon(Icons.lock),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)))),
          SizedBox(
            height: 30.0,
          ),
          RaisedButton(
            color: Color(0xffda1e37),
            onPressed: () {},
            child: Text("Iniciar Sesión"),
            textColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
            padding: EdgeInsets.symmetric(vertical: 15.0),
          )
        ],
      ),
    );
  }
}
