import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class Register extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
      appBar: AppBar(
        title: Text("Retornar"),
        backgroundColor: Color(0xffda1e37),
      ),
    );
  }

  Widget _body() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Registrate con tu E-mail",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                validator: (value) =>
                    value.isEmpty ? "Ingrese el nombre" : null,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  labelStyle: TextStyle(color: Colors.grey),
                  labelText: "Nombre Completo",
                  prefixIcon: Icon(Icons.account_circle),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                validator: (value) =>
                    value.isEmpty ? "ingrese un correo" : null,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  labelStyle: TextStyle(color: Colors.grey),
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                validator: (value) =>
                    value.isEmpty ? "ingrese un telefono" : null,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  labelStyle: TextStyle(color: Colors.grey),
                  labelText: "Telefono",
                  prefixIcon: Icon(Icons.phone),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                validator: (value) =>
                    value.isEmpty ? "ingrese una contraseña" : null,
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  labelStyle: TextStyle(color: Colors.grey),
                  labelText: "Contraseña",
                  prefixIcon: Icon(Icons.lock),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                validator: (value) =>
                    value.isEmpty ? "ingrese un usuario" : null,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  labelStyle: TextStyle(color: Colors.grey),
                  labelText: "Nombre de usuario",
                  prefixIcon: Icon(Feather.at_sign),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              RaisedButton(
                color: Color(0xffda1e37),
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    print("validado");
                  } else {
                    print("no validado");
                  }
                },
                child: Text("> Crear mi cuenta"),
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                padding: EdgeInsets.symmetric(vertical: 15.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
