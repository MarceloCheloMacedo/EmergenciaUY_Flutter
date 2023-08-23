import 'package:flutter/material.dart';

class MyLoggin extends StatefulWidget {
  const MyLoggin({super.key});

  @override
  State<MyLoggin> createState() => _MyLogginState();
}

class _MyLogginState extends State<MyLoggin> {
  late String _nombre;
  late String _email;
  late String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 90.0),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 100.0,
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage('images/Ambulancia.png'),
              ),
              const Text(
                'Login',
                style: TextStyle(fontFamily: 'NerkoOne', fontSize: 50.0),
              ),
              const Text(
                'Fill the data',
                style: TextStyle(fontFamily: 'NerkoOne', fontSize: 20.0),
              ),
              const SizedBox(
                width: 160.0,
                height: 15.0,
                child: Divider(color: Colors.blueGrey),
              ),
              TextField(
                enableInteractiveSelection: false,
                autofocus: true,
                textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
                    hintText: 'USER-NAME',
                    labelText: 'User-Name',
                    suffixIcon: const Icon(Icons.verified_user),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
                onSubmitted: (valor) {
                  _nombre = valor;
                  print('El nombre es $_nombre');
                },
              ),
              const Divider(
                height: 18.0,
              ),
              TextField(
                enableInteractiveSelection: false,
                autofocus: true,
                textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
                    hintText: 'EMAIL',
                    labelText: 'Email',
                    suffixIcon: const Icon(Icons.alternate_email),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
                onSubmitted: (valor) {
                  _email = valor;
                  print('El email es $_email');
                },
              ),
              const Divider(
                height: 15.0,
              ),
              TextField(
                enableInteractiveSelection: false,
                obscureText: true,
                autofocus: true,
                textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
                    hintText: 'Password',
                    labelText: 'Password',
                    suffixIcon: const Icon(Icons.lock_outline),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
                onSubmitted: (valor) {
                  _password = valor;
                  print('El password es $_password');
                },
              ),
              const Divider(
                height: 15.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  fixedSize: Size.fromWidth(150),
                  padding: EdgeInsets.all(10),
                ),
                child: Text(
                  'Press Here',
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 20.0,
                      fontFamily: 'NerkoOne'),
                ),
                onPressed: () {
                  print('diste click');
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
